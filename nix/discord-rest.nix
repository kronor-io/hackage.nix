{
  "0.2.2" = {
    sha256 = "633982d68683471e0e03c0a7ce6bce8af9c3b764a1fc82a1690355e17e014f0b";
    revisions = {
      r0 = {
        nix = import ../hackage/discord-rest-0.2.2-r0-98a15993df8509a8857a4e565043a514220644d359032793640a73f84c141e3f.nix;
        revNum = 0;
        revTimestamp = "2017-06-17T20:31:28Z";
        sha256 = "98a15993df8509a8857a4e565043a514220644d359032793640a73f84c141e3f";
      };
      r1 = {
        nix = import ../hackage/discord-rest-0.2.2-r1-21a87aa2b1ee3d622f1ac5ae7beffdc287576583bc9e2481822c9501dfe79143.nix;
        revNum = 1;
        revTimestamp = "2018-10-20T18:10:48Z";
        sha256 = "21a87aa2b1ee3d622f1ac5ae7beffdc287576583bc9e2481822c9501dfe79143";
      };
      default = "r1";
    };
  };
}