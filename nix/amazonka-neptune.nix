{
  "2.0" = {
    sha256 = "588097f2a80bec2e71ba2182217b97a2be6086703868b1b4edc952626b5af693";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-neptune-2.0-r0-6e546b9293fd274cf86606319264db17840745534dc4b5343ad22018e82bc4b1.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:42:17Z";
        sha256 = "6e546b9293fd274cf86606319264db17840745534dc4b5343ad22018e82bc4b1";
      };
      r1 = {
        nix = import ../hackage/amazonka-neptune-2.0-r1-2035d864f559affbd8efd88615c78eb0480525f93e0b312d84b65c7fd0214d01.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:50:38Z";
        sha256 = "2035d864f559affbd8efd88615c78eb0480525f93e0b312d84b65c7fd0214d01";
      };
      default = "r1";
    };
  };
}