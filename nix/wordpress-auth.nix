{
  "1.0.0.0" = {
    sha256 = "ac784e5222e6aab6cfffd71685e69b2a1bf0a42283f183931bd2d04c51cc1994";
    revisions = {
      r0 = {
        nix = import ../hackage/wordpress-auth-1.0.0.0-r0-8371ac03f9ac4757143c52d9752d75ec2a5a62b61d527aad229c192fde6c41cf.nix;
        revNum = 0;
        revTimestamp = "2018-12-23T08:13:43Z";
        sha256 = "8371ac03f9ac4757143c52d9752d75ec2a5a62b61d527aad229c192fde6c41cf";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "126844d8bc9ffcd9f6e34f1b6e7a02f09dac48ad6d5d7510bce2bc052abdb981";
    revisions = {
      r0 = {
        nix = import ../hackage/wordpress-auth-1.0.0.1-r0-aaa68294a8f72247b35090a9d3c2ffc744df66d85e5698d0cd5e8f2de9515b2f.nix;
        revNum = 0;
        revTimestamp = "2021-05-30T02:51:27Z";
        sha256 = "aaa68294a8f72247b35090a9d3c2ffc744df66d85e5698d0cd5e8f2de9515b2f";
      };
      r1 = {
        nix = import ../hackage/wordpress-auth-1.0.0.1-r1-96747f027db23e43162ec42832a050702e960e8d10f4e28b382115a2192821db.nix;
        revNum = 1;
        revTimestamp = "2023-05-08T05:06:45Z";
        sha256 = "96747f027db23e43162ec42832a050702e960e8d10f4e28b382115a2192821db";
      };
      default = "r1";
    };
  };
}