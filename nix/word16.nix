{
  "0.1.0.0" = {
    sha256 = "bd59f8d86942230d493d2dea778df0aabfa090e151780c0f5d82ac03ed52567c";
    revisions = {
      r0 = {
        nix = import ../hackage/word16-0.1.0.0-r0-b15315a8572aafa05cdccecbe17b22cd89d33d7bbd7a86ac2003ae58686d99af.nix;
        revNum = 0;
        revTimestamp = "2021-08-21T19:00:41Z";
        sha256 = "b15315a8572aafa05cdccecbe17b22cd89d33d7bbd7a86ac2003ae58686d99af";
      };
      r1 = {
        nix = import ../hackage/word16-0.1.0.0-r1-aa74958e8b3d1b63bdc0aca11df91b02116d66cf54326fc0c8c280d733f9d26e.nix;
        revNum = 1;
        revTimestamp = "2021-12-08T19:39:31Z";
        sha256 = "aa74958e8b3d1b63bdc0aca11df91b02116d66cf54326fc0c8c280d733f9d26e";
      };
      default = "r1";
    };
  };
}