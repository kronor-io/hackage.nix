{
  "2.0" = {
    sha256 = "b61a726ccd3468a3b086aed0939130d01927b7ae8bc02fd2899350ed015615b7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appconfig-2.0-r0-79a73687c86893357452a1a804a9fd4ff93b80402904dbfa038b6ef8e925612a.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:04:41Z";
        sha256 = "79a73687c86893357452a1a804a9fd4ff93b80402904dbfa038b6ef8e925612a";
      };
      r1 = {
        nix = import ../hackage/amazonka-appconfig-2.0-r1-9d92a7d3135dc5aec00411f1ace5c0ec0b45e843bfb955c4f2b3653c592d2371.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:34:57Z";
        sha256 = "9d92a7d3135dc5aec00411f1ace5c0ec0b45e843bfb955c4f2b3653c592d2371";
      };
      default = "r1";
    };
  };
}