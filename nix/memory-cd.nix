{
  "0.16.0.1" = {
    sha256 = "c1658f8d5afc7406f47c63ff04ebb70b0a8dbb65cf064a66253395a0eb7cb315";
    revisions = {
      r0 = {
        nix = import ../hackage/memory-cd-0.16.0.1-r0-b76547dbfa4470646b1a50a9b6cf087f5561bd741e819cfb2251a80f7ce45ec1.nix;
        revNum = 0;
        revTimestamp = "2021-12-17T15:37:09Z";
        sha256 = "b76547dbfa4470646b1a50a9b6cf087f5561bd741e819cfb2251a80f7ce45ec1";
      };
      r1 = {
        nix = import ../hackage/memory-cd-0.16.0.1-r1-2e792919d8c03e0e516587ec896804f1fd472642b2ea61e736ce052886444ace.nix;
        revNum = 1;
        revTimestamp = "2022-01-09T00:23:51Z";
        sha256 = "2e792919d8c03e0e516587ec896804f1fd472642b2ea61e736ce052886444ace";
      };
      default = "r1";
    };
  };
}