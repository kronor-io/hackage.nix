{
  "2.0" = {
    sha256 = "8cedb9ba60811932ec8cba634aa588cd39c0b65d58728cc27c0bc0232b00837b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-qldb-2.0-r0-3b2840f1f98cd6b3e99eeca2697e3298301c4c968d84276cc4c071e858277411.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:44:05Z";
        sha256 = "3b2840f1f98cd6b3e99eeca2697e3298301c4c968d84276cc4c071e858277411";
      };
      r1 = {
        nix = import ../hackage/amazonka-qldb-2.0-r1-03e26fed39f526a7c174ebc3f5897cd2aaf7adf15ab5a65903fd094a76447336.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:51:28Z";
        sha256 = "03e26fed39f526a7c174ebc3f5897cd2aaf7adf15ab5a65903fd094a76447336";
      };
      default = "r1";
    };
  };
}