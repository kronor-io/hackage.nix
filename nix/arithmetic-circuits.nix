{
  "0.2.0" = {
    sha256 = "f8ff1d16eacc20d41889d91612e9d0dcfd9f005314bb91e9a7b30930d063d825";
    revisions = {
      r0 = {
        nix = import ../hackage/arithmetic-circuits-0.2.0-r0-8c1d1b2aa22cb1df41c810d4303ef44db172de454cd9be0e2647c9345ddaa48a.nix;
        revNum = 0;
        revTimestamp = "2020-01-15T16:04:29Z";
        sha256 = "8c1d1b2aa22cb1df41c810d4303ef44db172de454cd9be0e2647c9345ddaa48a";
      };
      r1 = {
        nix = import ../hackage/arithmetic-circuits-0.2.0-r1-b04c29ea07f463fd8a5eef3636b733ba2ad2a66de09b3ae6d5df411f0dde6664.nix;
        revNum = 1;
        revTimestamp = "2021-08-27T18:10:51Z";
        sha256 = "b04c29ea07f463fd8a5eef3636b733ba2ad2a66de09b3ae6d5df411f0dde6664";
      };
      r2 = {
        nix = import ../hackage/arithmetic-circuits-0.2.0-r2-c41ddbee0ab6c892d0f849fa41e55c3b810efb8d20cc52f7752a337b4bf0060d.nix;
        revNum = 2;
        revTimestamp = "2021-08-30T20:11:05Z";
        sha256 = "c41ddbee0ab6c892d0f849fa41e55c3b810efb8d20cc52f7752a337b4bf0060d";
      };
      default = "r2";
    };
  };
}