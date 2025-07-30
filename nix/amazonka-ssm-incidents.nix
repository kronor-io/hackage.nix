{
  "2.0" = {
    sha256 = "3362f14b2c6ea28c6e3a4c7f35f35884fd581e1c58b837c0d37c8e4c72e12831";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ssm-incidents-2.0-r0-701010b4e090203ee99215cebd311e04b22acf64958754e049002d40f014e347.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:48:05Z";
        sha256 = "701010b4e090203ee99215cebd311e04b22acf64958754e049002d40f014e347";
      };
      r1 = {
        nix = import ../hackage/amazonka-ssm-incidents-2.0-r1-f973d728e1a8e83aeb88ae6128c30de1115837121888338d9efcc04491892893.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:54:48Z";
        sha256 = "f973d728e1a8e83aeb88ae6128c30de1115837121888338d9efcc04491892893";
      };
      default = "r1";
    };
  };
}