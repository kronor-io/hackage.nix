{
  "2.0" = {
    sha256 = "8f8897e62ecbfd5767dece581203ab4f56b84ca499e3bda77eccf18a16b3453d";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-signer-2.0-r0-ba07390150f8e37d1f33658adaa2bcc5c098b89e39edbc69af70142b3dcdea54.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:47:24Z";
        sha256 = "ba07390150f8e37d1f33658adaa2bcc5c098b89e39edbc69af70142b3dcdea54";
      };
      r1 = {
        nix = import ../hackage/amazonka-signer-2.0-r1-f80d8889561b827c5b2c51da89b71cc6ce8c0893e63989ece0731528d0a12e48.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:54:18Z";
        sha256 = "f80d8889561b827c5b2c51da89b71cc6ce8c0893e63989ece0731528d0a12e48";
      };
      default = "r1";
    };
  };
}