{
  "0.1.0.0" = {
    sha256 = "d2927b9fed0e32fe7afc539e7b427e0a95f8c9297bb6bc531101b476ba8a3c03";
    revisions = {
      r0 = {
        nix = import ../hackage/cmark-lucid-0.1.0.0-r0-15eedd0f766c1f6744381d09bee19b73448055180ec4cf611792a640fe411ce5.nix;
        revNum = 0;
        revTimestamp = "2016-07-22T09:23:13Z";
        sha256 = "15eedd0f766c1f6744381d09bee19b73448055180ec4cf611792a640fe411ce5";
      };
      r1 = {
        nix = import ../hackage/cmark-lucid-0.1.0.0-r1-e5e19d6523193c84713bf09d7b6ea50b3a66963e9ff223fecb18d185c25e3fd6.nix;
        revNum = 1;
        revTimestamp = "2017-07-24T20:36:00Z";
        sha256 = "e5e19d6523193c84713bf09d7b6ea50b3a66963e9ff223fecb18d185c25e3fd6";
      };
      default = "r1";
    };
  };
}