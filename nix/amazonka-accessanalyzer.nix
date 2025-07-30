{
  "2.0" = {
    sha256 = "0e26fc50334b5009c55b352164f65171cf6e75857152f22d76d42c80659f2535";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-accessanalyzer-2.0-r0-033fea46fd6fb458ff0264d078139f51cfbf797d85ab7ce676a4dd96396cb56a.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:03:58Z";
        sha256 = "033fea46fd6fb458ff0264d078139f51cfbf797d85ab7ce676a4dd96396cb56a";
      };
      r1 = {
        nix = import ../hackage/amazonka-accessanalyzer-2.0-r1-e197261f3360f3be7f9f472ec7797068343d78ae0b690226f3454c343f5cf100.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:34:54Z";
        sha256 = "e197261f3360f3be7f9f472ec7797068343d78ae0b690226f3454c343f5cf100";
      };
      default = "r1";
    };
  };
}