{
  "0.1.0.0" = {
    sha256 = "8d4003891b72d228f98339fa2095c0e66786727d54112e9c88cc0111732a71a0";
    revisions = {
      r0 = {
        nix = import ../hackage/multivector-0.1.0.0-r0-1cf2d2bbdd16a1b8b64aafb63cb7516222f33d771e500cc1cca4f0bf77941c8f.nix;
        revNum = 0;
        revTimestamp = "2018-05-05T01:49:29Z";
        sha256 = "1cf2d2bbdd16a1b8b64aafb63cb7516222f33d771e500cc1cca4f0bf77941c8f";
      };
      r1 = {
        nix = import ../hackage/multivector-0.1.0.0-r1-d985f9e60cf3c243e0957557237e6e2bb5cc0b2a63248625ac2c1853a9556dbd.nix;
        revNum = 1;
        revTimestamp = "2020-02-11T07:06:43Z";
        sha256 = "d985f9e60cf3c243e0957557237e6e2bb5cc0b2a63248625ac2c1853a9556dbd";
      };
      default = "r1";
    };
  };
}