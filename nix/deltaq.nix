{
  "1.0.0.0" = {
    sha256 = "2df12238cad97268ecc65e688644e8deb6ab980f429e4809c27984ac3adff703";
    revisions = {
      r0 = {
        nix = import ../hackage/deltaq-1.0.0.0-r0-df581e6fb44a15fc859af63e96a1cedaca2dd26fbc3519608c57618a44dd10de.nix;
        revNum = 0;
        revTimestamp = "2024-12-23T13:24:04Z";
        sha256 = "df581e6fb44a15fc859af63e96a1cedaca2dd26fbc3519608c57618a44dd10de";
      };
      r1 = {
        nix = import ../hackage/deltaq-1.0.0.0-r1-e13fc154b1ae9d3c9393dcfa4ba38c6d6de117f1fc72d3353b3392c10d9e94c4.nix;
        revNum = 1;
        revTimestamp = "2025-07-02T09:00:06Z";
        sha256 = "e13fc154b1ae9d3c9393dcfa4ba38c6d6de117f1fc72d3353b3392c10d9e94c4";
      };
      default = "r1";
    };
  };
}