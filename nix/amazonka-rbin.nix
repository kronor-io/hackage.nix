{
  "2.0" = {
    sha256 = "8b8c4e657511a63c911c2e19968bc0d3796c82d1fe00b1d5ea270699f8d219d1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-rbin-2.0-r0-c3729098ffc800fead30970f2c58e6530c80aa6a17d2c71eda7a24d613114669.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:44:22Z";
        sha256 = "c3729098ffc800fead30970f2c58e6530c80aa6a17d2c71eda7a24d613114669";
      };
      r1 = {
        nix = import ../hackage/amazonka-rbin-2.0-r1-539d26b82093be45b20b5759e6706b75a24405ff5d81590c14802b2499298a6d.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:51:29Z";
        sha256 = "539d26b82093be45b20b5759e6706b75a24405ff5d81590c14802b2499298a6d";
      };
      default = "r1";
    };
  };
}