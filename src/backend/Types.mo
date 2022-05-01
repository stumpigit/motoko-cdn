import Hash "mo:base/Hash";
import Text "mo:base/Text";
import Int "mo:base/Int";
import Trie "mo:base/Trie";
import TrieMap "mo:base/TrieMap";
import Blob "mo:base/Blob";

module {
  
  public type Service = actor {
    getFileInfo : shared FileId -> async ?FileData;
    getSize : shared () -> async Nat;
    putChunks : shared (FileId, Nat, Blob) -> async ?();
    putFile : shared FileInfo -> async ?FileId;
  };
  
  public type Timestamp = Int; // See mo:base/Time and Time.now()

  public type FileId = Text;

  public type ChunkData = Blob;

  public type ChunkId = Text; 
  

  public type FileExtension = {
    #jpeg;
    #jpg;
    #png;
    #gif;
  };

  public type FileInfo = {
    createdAt : Timestamp;
    chunkCount: Nat;    
    name: Text;
    size: Nat;
    extension: FileExtension;
    x: Nat;
    y: Nat;
    z: Nat;
  }; 

  public type FileData = {
    fileId : FileId;
    cid : Principal;
    uploadedAt : Timestamp;
    createdAt : Timestamp;
    chunkCount: Nat;    
    name: Text;
    size: Nat;
    extension: FileExtension;
    x: Nat;
    y: Nat;
    z: Nat;
  };

  public type Map<X, Y> = TrieMap.TrieMap<X, Y>;

  public type State = {
      files : Map<FileId, FileData>;
      // all chunks.
      chunks : Map<ChunkId, ChunkData>;
  };

  public func empty () : State {
    let st : State = {
      files = TrieMap.TrieMap<FileId, FileData>(Text.equal, Text.hash);
      chunks = TrieMap.TrieMap<ChunkId, ChunkData>(Text.equal, Text.hash);
    };
    st
  };


  public type HttpRequest = {
        body: Blob;
        headers: [HeaderField];
        method: Text;
        url: Text;
    };

    public type StreamingCallbackToken =  {
        content_encoding: Text;
        index: Nat;
        key: Text;
        sha256: ?Blob;
    };
    public type StreamingCallbackHttpResponse = {
        body: Blob;
        token: ?StreamingCallbackToken;
    };
    public type ChunkId = Nat;
    public type SetAssetContentArguments = {
        chunk_ids: [ChunkId];
        content_encoding: Text;
        key: Key;
        sha256: ?Blob;
    };
    public type Path = Text;
    public type Key = Text;

    public type HttpResponse = {
        body: Blob;
        headers: [HeaderField];
        status_code: Nat16;
        streaming_strategy: ?StreamingStrategy;
	      upgrade: Bool;
    };

    public type StreamingStrategy = {
        #Callback: {
            callback: query (StreamingCallbackToken) ->
            async (StreamingCallbackHttpResponse);
            token: StreamingCallbackToken;
        };
    };

    public type HeaderField = (Text, Text);

    public type WMTSTile = {
        version: Text;
        layer: Text;
        style: Text;
        format: Text;
        srs: Text;
        tileMatrixSet: Text;
        tileMatrix: Text;
        tileRow: Text;
        tileCol: Text;
    };
}