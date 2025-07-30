{
  "0.1.0.0" = {
    sha256 = "8bda0c157938216869dcb1a44f835445969f29f18afa2cf61221f651c3e4b479";
    revisions = {
      r0 = {
        nix = import ../hackage/naperian-0.1.0.0-r0-a9f7d9f9c1bb98bb70d14a745df6318bb930d16ec4cd2f0f09b2c43939738cb8.nix;
        revNum = 0;
        revTimestamp = "2017-08-21T22:02:12Z";
        sha256 = "a9f7d9f9c1bb98bb70d14a745df6318bb930d16ec4cd2f0f09b2c43939738cb8";
      };
      r1 = {
        nix = import ../hackage/naperian-0.1.0.0-r1-75b87450ec8608496d94d8e15c7bed1326a21a67da7f03abd8def04971f16b81.nix;
        revNum = 1;
        revTimestamp = "2018-11-14T05:53:55Z";
        sha256 = "75b87450ec8608496d94d8e15c7bed1326a21a67da7f03abd8def04971f16b81";
      };
      default = "r1";
    };
  };
}