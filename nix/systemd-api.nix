{
  "0.1.0.0" = {
    sha256 = "9e90c0a7e512ba10c517ee751fe466a69577bed40f059b1f2ca559317efd56c7";
    revisions = {
      r0 = {
        nix = import ../hackage/systemd-api-0.1.0.0-r0-cc6a1dc9e06fb51d52322fed34331f05a82d50c83bb799bd2d92b6d08fac916f.nix;
        revNum = 0;
        revTimestamp = "2023-07-13T13:46:11Z";
        sha256 = "cc6a1dc9e06fb51d52322fed34331f05a82d50c83bb799bd2d92b6d08fac916f";
        };
      r1 = {
        nix = import ../hackage/systemd-api-0.1.0.0-r1-a6b5880c71b07e2c19150795b13f23e22474761d230d5396ba49d07b212ee40f.nix;
        revNum = 1;
        revTimestamp = "2023-11-27T18:13:53Z";
        sha256 = "a6b5880c71b07e2c19150795b13f23e22474761d230d5396ba49d07b212ee40f";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "11660771c9b43e174f8452eff17eb6b956e954adcfa99037a919f6929ba7d29f";
    revisions = {
      r0 = {
        nix = import ../hackage/systemd-api-0.1.0.1-r0-ff66503e8f29cd4aea8df1c16bda9d38b1ce65a8577850715857fcf88541fa3c.nix;
        revNum = 0;
        revTimestamp = "2024-02-13T14:45:33Z";
        sha256 = "ff66503e8f29cd4aea8df1c16bda9d38b1ce65a8577850715857fcf88541fa3c";
        };
      default = "r0";
      };
    };
  }