{
  "9.1001.0" = {
    sha256 = "14fa8a6cde16be9563f9d48706294a0d91f47c1b4f449a474e49476f1fd9687c";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1001.0-r0-02bd44b7639a7bad6ae2721c409b6918b8b4acc416103a8be45b5da06f1c5f49.nix;
        revNum = 0;
        revTimestamp = "2024-05-15T13:07:53Z";
        sha256 = "02bd44b7639a7bad6ae2721c409b6918b8b4acc416103a8be45b5da06f1c5f49";
        };
      r1 = {
        nix = import ../hackage/ghc-internal-9.1001.0-r1-dfa39788bc81ede2db08080a93ac8819e57a8d6df955243dcb4af550982fa5e7.nix;
        revNum = 1;
        revTimestamp = "2024-05-30T10:19:52Z";
        sha256 = "dfa39788bc81ede2db08080a93ac8819e57a8d6df955243dcb4af550982fa5e7";
        };
      default = "r1";
      };
    };
  "9.1201.0" = {
    sha256 = "3e51ed5ee7062221a61dba8b535c21ee71a9457c91db3b29e6c817ee4455d210";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-internal-9.1201.0-r0-e4d566b20423563c3f364a82189dafc9592fb4e479ae59866cb5d2f86aea91c9.nix;
        revNum = 0;
        revTimestamp = "2024-12-16T09:24:47Z";
        sha256 = "e4d566b20423563c3f364a82189dafc9592fb4e479ae59866cb5d2f86aea91c9";
        };
      default = "r0";
      };
    };
  }