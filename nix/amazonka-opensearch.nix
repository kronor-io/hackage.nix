{
  "2.0" = {
    sha256 = "465110f244fdcf951545e871a2e919d152915b9f555fd5c7ed68dacecf650f92";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-opensearch-2.0-r0-d453d01524d94a277feca03b5f21c3e7e40d806f6ca23eb4edc600b8c2631045.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:42:42Z";
        sha256 = "d453d01524d94a277feca03b5f21c3e7e40d806f6ca23eb4edc600b8c2631045";
      };
      r1 = {
        nix = import ../hackage/amazonka-opensearch-2.0-r1-d832a423fbca7cb3250f485118ee3d5e3e65acb87d66da3e908f57bfb026ac7d.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:50:39Z";
        sha256 = "d832a423fbca7cb3250f485118ee3d5e3e65acb87d66da3e908f57bfb026ac7d";
      };
      default = "r1";
    };
  };
}