{
  "0.1.0.0" = {
    sha256 = "007cfb1c56ff8e8f905dad7c1630630162ffb8520925f028cf82e93ba7cd4a58";
    revisions = {
      r0 = {
        nix = import ../hackage/distance-0.1.0.0-r0-2080b8ecf16b8e4cec7bfcdca8fa40805f7f139dbcd09762a317b16ceeaedbbd.nix;
        revNum = 0;
        revTimestamp = "2017-01-07T11:50:39Z";
        sha256 = "2080b8ecf16b8e4cec7bfcdca8fa40805f7f139dbcd09762a317b16ceeaedbbd";
      };
      r1 = {
        nix = import ../hackage/distance-0.1.0.0-r1-b8629453e8a81834e23eb577c6b304891ff60f36b956d03e59da854ba8adda47.nix;
        revNum = 1;
        revTimestamp = "2017-01-07T23:15:27Z";
        sha256 = "b8629453e8a81834e23eb577c6b304891ff60f36b956d03e59da854ba8adda47";
      };
      default = "r1";
    };
  };
}