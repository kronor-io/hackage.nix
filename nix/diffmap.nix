{
  "0.1.0.0" = {
    sha256 = "20020a9f3267f7811f7ea0fce888f8150576cd016adb5365fa3ce886eef6cd44";
    revisions = {
      r0 = {
        nix = import ../hackage/diffmap-0.1.0.0-r0-be243e3ab7c140784a4298f55d17d5533c06f72288eb2863972ce6474496a6f2.nix;
        revNum = 0;
        revTimestamp = "2018-06-18T16:16:51Z";
        sha256 = "be243e3ab7c140784a4298f55d17d5533c06f72288eb2863972ce6474496a6f2";
        };
      r1 = {
        nix = import ../hackage/diffmap-0.1.0.0-r1-27ea8c315b5dbfb243b2c3b61eab2164534e1d02887a05392dda65995cd36c3e.nix;
        revNum = 1;
        revTimestamp = "2018-11-06T16:34:07Z";
        sha256 = "27ea8c315b5dbfb243b2c3b61eab2164534e1d02887a05392dda65995cd36c3e";
        };
      default = "r1";
      };
    };
  }