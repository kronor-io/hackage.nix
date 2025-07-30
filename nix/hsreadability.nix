{
  "1.0.0.0" = {
    sha256 = "5cd9ace845845d6ea76c5100fd149e0c9c60206d39fe96e9954869d94fc79a60";
    revisions = {
      r0 = {
        nix = import ../hackage/hsreadability-1.0.0.0-r0-1cd37dc3ac663234750d5d17b53159d68338b5f43f418a67f4f8c83f75e46b80.nix;
        revNum = 0;
        revTimestamp = "2015-04-19T20:16:20Z";
        sha256 = "1cd37dc3ac663234750d5d17b53159d68338b5f43f418a67f4f8c83f75e46b80";
      };
      r1 = {
        nix = import ../hackage/hsreadability-1.0.0.0-r1-e0b87a28497a4730024ce1459c7812d519027e8b90aa863dac85dd251558fa23.nix;
        revNum = 1;
        revTimestamp = "2015-04-20T20:22:35Z";
        sha256 = "e0b87a28497a4730024ce1459c7812d519027e8b90aa863dac85dd251558fa23";
      };
      default = "r1";
    };
  };
}