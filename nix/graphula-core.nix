{
  "2.0.0.1" = {
    sha256 = "39fe60834e485eb9e4f230ae0d9da8322ba867f65ac6335dd22d83c35be9817a";
    revisions = {
      r0 = {
        nix = import ../hackage/graphula-core-2.0.0.1-r0-207f821991afae271792ef1433bd4d28bc8db324e7303f01cafeb39f6130a31d.nix;
        revNum = 0;
        revTimestamp = "2020-11-18T14:02:46Z";
        sha256 = "207f821991afae271792ef1433bd4d28bc8db324e7303f01cafeb39f6130a31d";
      };
      r1 = {
        nix = import ../hackage/graphula-core-2.0.0.1-r1-927a73b85df70b62611f70ce314c6109301107721725fe3e0586e38d46faeb72.nix;
        revNum = 1;
        revTimestamp = "2021-04-21T15:01:31Z";
        sha256 = "927a73b85df70b62611f70ce314c6109301107721725fe3e0586e38d46faeb72";
      };
      default = "r1";
    };
  };
}