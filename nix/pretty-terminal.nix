{
  "0.1.0.0" = {
    sha256 = "8e76f74c84fc7039845b8915dbe91e852673ca17047871c304fc0b491eaf2567";
    revisions = {
      r0 = {
        nix = import ../hackage/pretty-terminal-0.1.0.0-r0-be3ab74369bfb6604f3831551e668b33cebb6eef244c9363599bd29034ffbed0.nix;
        revNum = 0;
        revTimestamp = "2018-02-03T07:19:10Z";
        sha256 = "be3ab74369bfb6604f3831551e668b33cebb6eef244c9363599bd29034ffbed0";
      };
      r1 = {
        nix = import ../hackage/pretty-terminal-0.1.0.0-r1-e9135d86ebb2a8e3aaf5a79088de4628dbd49988388e0fbfc26c5ecb3c399ad9.nix;
        revNum = 1;
        revTimestamp = "2019-02-11T08:21:03Z";
        sha256 = "e9135d86ebb2a8e3aaf5a79088de4628dbd49988388e0fbfc26c5ecb3c399ad9";
      };
      default = "r1";
    };
  };
}