{
  "0.1" = {
    sha256 = "a075790dd132107b8005478179fcaf7e37a78c3011ca536ff0d95e0b437c2b38";
    revisions = {
      r0 = {
        nix = import ../hackage/hse-cpp-0.1-r0-72f085d02bd6bfd197d4dcb0f5700aed030634aebaccc7bca99f2624d4658dbb.nix;
        revNum = 0;
        revTimestamp = "2013-05-21T06:50:00Z";
        sha256 = "72f085d02bd6bfd197d4dcb0f5700aed030634aebaccc7bca99f2624d4658dbb";
        };
      r1 = {
        nix = import ../hackage/hse-cpp-0.1-r1-9ed587127e9760a075bf6ea478997e1a1fb9e500102bd883206aa843e7d92a4b.nix;
        revNum = 1;
        revTimestamp = "2016-08-11T18:58:06Z";
        sha256 = "9ed587127e9760a075bf6ea478997e1a1fb9e500102bd883206aa843e7d92a4b";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "eeb0168c00bf5dd2975faf3f5915035c73b40063b1f315ce3fd58f66a6ae4b4c";
    revisions = {
      r0 = {
        nix = import ../hackage/hse-cpp-0.2-r0-90077df18787d193ac882837f39adc1912fa925455f6dfbe5ef3f880e5383f34.nix;
        revNum = 0;
        revTimestamp = "2016-10-06T17:12:02Z";
        sha256 = "90077df18787d193ac882837f39adc1912fa925455f6dfbe5ef3f880e5383f34";
        };
      default = "r0";
      };
    };
  }