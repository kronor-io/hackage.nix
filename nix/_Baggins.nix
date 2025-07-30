{
  "1.0" = {
    sha256 = "6c81288356d6296abd8031be0df21ad16628b76021f990ec9ebc3a8f3fc2fd55";
    revisions = {
      r0 = {
        nix = import ../hackage/Baggins-1.0-r0-52ecbfc74eb5ed01d4d21fe593d65e55787bdb7d5c36828d2f6bfb3f7a9ab7c8.nix;
        revNum = 0;
        revTimestamp = "2014-06-12T19:26:55Z";
        sha256 = "52ecbfc74eb5ed01d4d21fe593d65e55787bdb7d5c36828d2f6bfb3f7a9ab7c8";
      };
      r1 = {
        nix = import ../hackage/Baggins-1.0-r1-654cbc7a4109bf3baaa2491f10a7f49d1831008129d4d5ef9e0e558a5a374098.nix;
        revNum = 1;
        revTimestamp = "2014-06-18T11:34:56Z";
        sha256 = "654cbc7a4109bf3baaa2491f10a7f49d1831008129d4d5ef9e0e558a5a374098";
      };
      default = "r1";
    };
  };
}