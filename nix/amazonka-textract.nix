{
  "2.0" = {
    sha256 = "3e1c9a5ff569858f1c85c77395d09e48672ec4dd6458802c34413b9126c70dd9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-textract-2.0-r0-dfe36c0eb2db7831594a797f7e8c009c6fdb3208eba1f8dbaf05c8724f8be87c.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:48:53Z";
        sha256 = "dfe36c0eb2db7831594a797f7e8c009c6fdb3208eba1f8dbaf05c8724f8be87c";
      };
      r1 = {
        nix = import ../hackage/amazonka-textract-2.0-r1-200221ba64f5b31736f47926c39d7c606c444d28366fdfbd732b1e0741b559f7.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:56:02Z";
        sha256 = "200221ba64f5b31736f47926c39d7c606c444d28366fdfbd732b1e0741b559f7";
      };
      default = "r1";
    };
  };
}