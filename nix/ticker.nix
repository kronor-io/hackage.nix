{
  "1.0.0" = {
    sha256 = "0db00209fcd27c0d94613b9ee8ea24ffec84f411241f6b868124447361c7c19a";
    revisions = {
      r0 = {
        nix = import ../hackage/ticker-1.0.0-r0-8e31c1264c5452613e6cb594e457b4246615ff6531845ddd9cf6db31656151cf.nix;
        revNum = 0;
        revTimestamp = "2017-08-21T16:22:44Z";
        sha256 = "8e31c1264c5452613e6cb594e457b4246615ff6531845ddd9cf6db31656151cf";
      };
      r1 = {
        nix = import ../hackage/ticker-1.0.0-r1-e7fd996113be9dcd5d41ebcbcaaa16e865923aaf465fe425d063d20b7a903fb4.nix;
        revNum = 1;
        revTimestamp = "2017-08-22T07:20:08Z";
        sha256 = "e7fd996113be9dcd5d41ebcbcaaa16e865923aaf465fe425d063d20b7a903fb4";
      };
      default = "r1";
    };
  };
}