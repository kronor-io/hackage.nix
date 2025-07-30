{
  "2.0" = {
    sha256 = "4fd82dbbe4b9afcd8d1519d707225fe1361e46b3bea274b4e1a7282f9120a515";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-account-2.0-r0-15100e6630c617904d6b46e1c924ac827cc856f7a1f41722c3c157b9dd036770.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:04:02Z";
        sha256 = "15100e6630c617904d6b46e1c924ac827cc856f7a1f41722c3c157b9dd036770";
      };
      r1 = {
        nix = import ../hackage/amazonka-account-2.0-r1-ab2abec282d68cfef850fcd6837a479404c02207220959fc863f41fb0fd9eea3.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:34:54Z";
        sha256 = "ab2abec282d68cfef850fcd6837a479404c02207220959fc863f41fb0fd9eea3";
      };
      default = "r1";
    };
  };
}