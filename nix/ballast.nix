{
  "0.1.0.0" = {
    sha256 = "0e9fd358b4f39fb0f0379fd22b934b6e11a5fde515d306d87d3248428b747fea";
    revisions = {
      r0 = {
        nix = import ../hackage/ballast-0.1.0.0-r0-370f5569afc87315946658489860765bc01399e27c0b690081a08a0f0defa5c7.nix;
        revNum = 0;
        revTimestamp = "2017-05-09T22:21:04Z";
        sha256 = "370f5569afc87315946658489860765bc01399e27c0b690081a08a0f0defa5c7";
        };
      r1 = {
        nix = import ../hackage/ballast-0.1.0.0-r1-31a53192d839e4c416197c46b714cfaf14a633ccdba8c6d98a252f7d73df9d51.nix;
        revNum = 1;
        revTimestamp = "2017-07-18T18:24:29Z";
        sha256 = "31a53192d839e4c416197c46b714cfaf14a633ccdba8c6d98a252f7d73df9d51";
        };
      r2 = {
        nix = import ../hackage/ballast-0.1.0.0-r2-ce3b79eb1825cdc62d024871fe405b57188c6ba0927d1b30996639906f1efcf6.nix;
        revNum = 2;
        revTimestamp = "2017-08-12T02:50:44Z";
        sha256 = "ce3b79eb1825cdc62d024871fe405b57188c6ba0927d1b30996639906f1efcf6";
        };
      default = "r2";
      };
    };
  "0.2.0.0" = {
    sha256 = "d658b0b0f129a6b25e9f58ee9702437a814581ab2920519f50abd5bd9e25add0";
    revisions = {
      r0 = {
        nix = import ../hackage/ballast-0.2.0.0-r0-1284745a05cfef9c70fe6b37487ddfbb3d7ad7b5f2c8e8d005a5baff9ae53dae.nix;
        revNum = 0;
        revTimestamp = "2017-08-17T21:42:13Z";
        sha256 = "1284745a05cfef9c70fe6b37487ddfbb3d7ad7b5f2c8e8d005a5baff9ae53dae";
        };
      default = "r0";
      };
    };
  }