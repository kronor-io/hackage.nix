{
  "0.0.12.1" = {
    sha256 = "ab843873d40e4b7e630dc0bddfd28eae926369a521e772802f428d6beccf81a3";
    revisions = {
      r0 = {
        nix = import ../hackage/basement-cd-0.0.12.1-r0-b41b0cd85142c1b1591b4c4625944d8588400f6c73d0e4bc8b29a215ebfef1c6.nix;
        revNum = 0;
        revTimestamp = "2021-12-17T14:47:49Z";
        sha256 = "b41b0cd85142c1b1591b4c4625944d8588400f6c73d0e4bc8b29a215ebfef1c6";
      };
      r1 = {
        nix = import ../hackage/basement-cd-0.0.12.1-r1-986d3e8fdd481d1457b2b0d9f067d6f4da39fc6185fb52686253faf61b49e78b.nix;
        revNum = 1;
        revTimestamp = "2022-01-09T00:24:53Z";
        sha256 = "986d3e8fdd481d1457b2b0d9f067d6f4da39fc6185fb52686253faf61b49e78b";
      };
      default = "r1";
    };
  };
}