{
  "0.1.0.0" = {
    sha256 = "73fe507995528849738b307c5be8598e1b504c1f483f77fe26b1918432f7a763";
    revisions = {
      r0 = {
        nix = import ../hackage/gtfs-realtime-0.1.0.0-r0-2d0fa6e33b0c18a7489f98c134fbb662c4ff094cb714b7f99d749e0953d67c36.nix;
        revNum = 0;
        revTimestamp = "2018-12-05T22:45:14Z";
        sha256 = "2d0fa6e33b0c18a7489f98c134fbb662c4ff094cb714b7f99d749e0953d67c36";
      };
      r1 = {
        nix = import ../hackage/gtfs-realtime-0.1.0.0-r1-ecd0f6a21b9d465ec5eefce76519a840e39bb001f17bcf83620c130d67a9a444.nix;
        revNum = 1;
        revTimestamp = "2018-12-06T07:56:10Z";
        sha256 = "ecd0f6a21b9d465ec5eefce76519a840e39bb001f17bcf83620c130d67a9a444";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "8042e96df50ffe72a9df967789eb2383a6acd5821dca8631e79a253d5119b179";
    revisions = {
      r0 = {
        nix = import ../hackage/gtfs-realtime-0.2.0.0-r0-d963c0a1cb90bb514bc165ce78e0d1ddd9f96698085331de09ce05bbddf01ffe.nix;
        revNum = 0;
        revTimestamp = "2018-12-09T08:46:47Z";
        sha256 = "d963c0a1cb90bb514bc165ce78e0d1ddd9f96698085331de09ce05bbddf01ffe";
      };
      default = "r0";
    };
  };
}