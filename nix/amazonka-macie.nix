{
  "2.0" = {
    sha256 = "b4ebba605f9e6e0ba6d5c5f85195abab8efb8e82902361c31c60ae5092f5d4ef";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-macie-2.0-r0-2aa67bb69a6827c69a88b3543a1e7db2cd5cb2a5fed16bf44b6946333e36103a.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:40:26Z";
        sha256 = "2aa67bb69a6827c69a88b3543a1e7db2cd5cb2a5fed16bf44b6946333e36103a";
        };
      r1 = {
        nix = import ../hackage/amazonka-macie-2.0-r1-53f40a3212abbe4b8affc4587df04b5a5ecc0bc4433b3fc015e89f1583a34cc7.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:50:17Z";
        sha256 = "53f40a3212abbe4b8affc4587df04b5a5ecc0bc4433b3fc015e89f1583a34cc7";
        };
      default = "r1";
      };
    };
  }