{
  "2.0" = {
    sha256 = "a5f71c6ddce5cb5a9d9ed6d97795b8d5d28b16c84bda8182e9a5914ea287c9ab";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-emr-serverless-2.0-r0-df271107a52c0a733bb7b7c0f0c2939a854bd2ee9730e7c69baec2812ea3bd27.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:12:16Z";
        sha256 = "df271107a52c0a733bb7b7c0f0c2939a854bd2ee9730e7c69baec2812ea3bd27";
      };
      r1 = {
        nix = import ../hackage/amazonka-emr-serverless-2.0-r1-3485996bbcf96a14e8f86fcdbcb2615b5a5a1850c091104e147b723c59ebb2d8.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:48:42Z";
        sha256 = "3485996bbcf96a14e8f86fcdbcb2615b5a5a1850c091104e147b723c59ebb2d8";
      };
      default = "r1";
    };
  };
}