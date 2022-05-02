import { BackendActor }  from './agent';
import { FileExtension, FileInfo } from './declarations/backend/backend.did';

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


const fetchImage = async () => {
  console.log("Fetchimage");
let file = await fetch("https://wmts.geo.admin.ch/1.0.0/ch.swisstopo.pixelkarte-farbe/default/current/3857/6/33/23.jpeg").then(response => response.blob())
.then(async function(file) {
  const fileInfo : FileInfo = {
    name: Math.random().toString(36).substring(2),
    createdAt: BigInt(Number(Date.now() * 1000)),
    size: BigInt(file.size),
    chunkCount: BigInt(1),
    // @ts-ignore
    extension: fileExtension,
    x: BigInt(22),
    y: BigInt(33),
    z: BigInt(6),
  };
  const ba = await BackendActor.getBackendActor();
  // const authenticated = await authClient.isAuthenticated();
  // console.log(authenticated);
  const fileId = (await ba.putFileInfo(fileInfo))[0] as string;
  console.log("FileId:")
  console.log(fileId);
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

fetchImage();