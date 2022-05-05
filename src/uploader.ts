import internal from 'stream';
import { BackendActor }  from './agent';
import { FileExtension, FileInfo } from './declarations/backend/backend.did';
export namespace Uploader {
const MAX_CHUNK_SIZE = 1024 * 500; // 500kb
const encodeArrayBuffer = (file: ArrayBuffer): number[] =>
      Array.from(new Uint8Array(file));
const processAndUploadChunk = async (
  blob: Blob,
  byteStart: number,
  fileId: string,
  chunk: number,
  fileSize: number,
) : Promise<any> => {
  const blobSlice = blob.slice(
    byteStart,
    Math.min(Number(fileSize), byteStart + MAX_CHUNK_SIZE),
    blob.type
  );
 
  const bsf = await blobSlice.arrayBuffer();
  const ba = await BackendActor.getBackendActor();
  // console.log(fileId);
  // console.log(chunk);
  // console.log(fileSize);
  // console.log(encodeArrayBuffer(bsf));
  return ba.putFileChunks(fileId, BigInt(chunk), BigInt(fileSize), encodeArrayBuffer(bsf));
}
const getFileExtension = (type: string) : FileExtension | null => {
  switch(type) {
    case 'image/jpeg':
      return { 'jpeg' : null };
    case 'image/gif':
      return { 'gif' : null };
    case 'image/jpg':
      return { 'jpg' : null };
    case 'image/png':
      return { 'png' : null };          
    default :
    return null;
  }
};

export async function getTiles(tilematrix: number, topleftx: number, toplefty: number, bottomrightx: number, bottomrighty: number) {
  let scaledenominator : number = 34123.6733416;
  
  if (tilematrix==10) scaledenominator = 545978.773466;
  if (tilematrix==11) scaledenominator = 272989.386733;
  if (tilematrix==12) scaledenominator = 136494.693366;
  if (tilematrix==13) scaledenominator = 68247.3466832;
  if (tilematrix==14) scaledenominator = 34123.6733416;
  if (tilematrix==15) scaledenominator = 17061.8366708;
  if (tilematrix==16) scaledenominator = 8530.9183354;
  if (tilematrix==17) scaledenominator = 4265.4591677;
  if (tilematrix==18) scaledenominator = 2132.72958385;
  if (tilematrix==19) scaledenominator = 1066.36479192;
  if (tilematrix==20) scaledenominator = 533.182395962;
  if (tilematrix==21) scaledenominator = 266.591197981;
  
  let tilematrixtopleftx : number = -20037508.3428;
  let tilematrixtoplefty : number = 20037508.3428;


  let tilewidth:number = 256;
  let div = tilewidth * 0.00028 * scaledenominator;

  let topleftTileRow = Math.round((topleftx - tilematrixtopleftx) / div);
  let bottomrightTileRow = Math.round((bottomrightx - tilematrixtopleftx) / div) + 1;

  let topleftTileCol = Math.round((tilematrixtoplefty-toplefty) / div);
  let bottomrightTileCol = Math.round((tilematrixtoplefty-bottomrighty) / div) + 1;


  let tilecol : number;
  let tilerow : number;
  for (tilerow = topleftTileRow; tilerow<=bottomrightTileRow; tilerow++) {
    for (tilecol = bottomrightTileCol; tilecol <=topleftTileCol; tilecol++) {
      console.log(tilematrix + "/"+ tilerow + "/" + tilecol);
      await Uploader.fetchImage(tilematrix, tilecol, tilerow);
    }
  }
}

export async function fetchImage(tilematrix: number, tilecol: number, tilerow: number) {
  console.log("Fetchimage");
let file = await fetch("https://wmts.geo.admin.ch/1.0.0/ch.swisstopo.pixelkarte-farbe/default/current/3857/"+ tilematrix +"/"+ tilerow+"/"+ tilecol+".jpeg").then(response => response.blob())
.then(async function(file) {
  const fileInfo : FileInfo = {
    name: Math.random().toString(36).substring(2),
    createdAt: BigInt(Number(Date.now() * 1000)),
    size: BigInt(file.size),
    chunkCount: BigInt(1),
    // @ts-ignore
    extension: getFileExtension("image/jpeg"),
    x: BigInt(tilerow),
    y: BigInt(tilecol),
    z: BigInt(tilematrix),
  };
  const ba = await BackendActor.getBackendActor();
  // const authenticated = await authClient.isAuthenticated();
  // console.log(authenticated);
  const fileId = (await ba.putFileInfo(fileInfo))[0] as string;
  console.log("FileId:")
  console.log(fileId);
  console.log("X:");
  console.log(fileInfo);
  const blob = file;
  const putChunkPromises: Promise<undefined>[] = [];
  let chunk = 1;
    putChunkPromises.push(
      processAndUploadChunk(blob, 0, fileId, chunk, file.size)
    );
  
  await Promise.all(putChunkPromises);
  await ba.updateStatus();

});
  


};
}