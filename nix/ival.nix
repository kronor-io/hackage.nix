{
  "0.1.0.0" = {
    sha256 = "933736eeafef40e6834b1ed5dc576251aecc41ee6e6a6cbc0626540cfd772e9a";
    revisions = {
      r0 = {
        nix = import ../hackage/ival-0.1.0.0-r0-323c77e91fb5c380ac15188dbd50908b4af5c860dd6453a4435149ee75d995ec.nix;
        revNum = 0;
        revTimestamp = "2018-08-23T01:45:36Z";
        sha256 = "323c77e91fb5c380ac15188dbd50908b4af5c860dd6453a4435149ee75d995ec";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "bdbc4c6060c1a1142f1eadfb7a4d60540292376b500054dc9fd55f6b7e9f4fb6";
    revisions = {
      r0 = {
        nix = import ../hackage/ival-0.2.0.0-r0-66882dd27939f47da7fff94873dd33c95a988a63f587421ca51a5be3183cdc0c.nix;
        revNum = 0;
        revTimestamp = "2018-09-22T01:31:15Z";
        sha256 = "66882dd27939f47da7fff94873dd33c95a988a63f587421ca51a5be3183cdc0c";
      };
      r1 = {
        nix = import ../hackage/ival-0.2.0.0-r1-aaefbbf4737083660b11566cc61e18636fb96c8d43b97936e76ad13565d5fb41.nix;
        revNum = 1;
        revTimestamp = "2019-02-28T21:11:38Z";
        sha256 = "aaefbbf4737083660b11566cc61e18636fb96c8d43b97936e76ad13565d5fb41";
      };
      default = "r1";
    };
  };
}