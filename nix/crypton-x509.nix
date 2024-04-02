{
  "1.7.6" = {
    sha256 = "ebb74aca2d00261e2fb4927d211ba1a174e190e5257f309e190f019727f8caff";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-1.7.6-r0-211067017c5e8ea3657ad14b9b3e5618f5907e63e58545970bafeb25e82d3857.nix;
        revNum = 0;
        revTimestamp = "2023-06-06T04:22:57Z";
        sha256 = "211067017c5e8ea3657ad14b9b3e5618f5907e63e58545970bafeb25e82d3857";
        };
      r1 = {
        nix = import ../hackage/crypton-x509-1.7.6-r1-c567657a705b6d6521f9dd2de999bf530d618ec00f3b939df76a41fb0fe94281.nix;
        revNum = 1;
        revTimestamp = "2023-06-06T04:27:54Z";
        sha256 = "c567657a705b6d6521f9dd2de999bf530d618ec00f3b939df76a41fb0fe94281";
        };
      default = "r1";
      };
    };
  }