{
  "2.0" = {
    sha256 = "ed7c3d5c0954bfe2f17e800b02575daa7ee99574dd7cca10572e37fcaf3113f2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-customer-profiles-2.0-r0-45379a5d7bfb59af91ac3056fdddc51a68f663fd0b189fab2de250cd166cfaa9.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:09:38Z";
        sha256 = "45379a5d7bfb59af91ac3056fdddc51a68f663fd0b189fab2de250cd166cfaa9";
      };
      r1 = {
        nix = import ../hackage/amazonka-customer-profiles-2.0-r1-ea7d2627d7ccf2df2d9e28a2f74e0b02670a72cc8ae735649f6982d264b4f79a.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:44:50Z";
        sha256 = "ea7d2627d7ccf2df2d9e28a2f74e0b02670a72cc8ae735649f6982d264b4f79a";
      };
      default = "r1";
    };
  };
}