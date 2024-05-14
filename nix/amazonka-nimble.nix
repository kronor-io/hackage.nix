{
  "2.0" = {
    sha256 = "ce45cde026c01c9dbe31317b89f0bb6c8cf12efe59560dc0ec803828e7f553ee";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-nimble-2.0-r0-699f174cff1197fc06ae1b109daa6410dbf7adc5afefad968a626b17d88b520b.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:42:30Z";
        sha256 = "699f174cff1197fc06ae1b109daa6410dbf7adc5afefad968a626b17d88b520b";
        };
      r1 = {
        nix = import ../hackage/amazonka-nimble-2.0-r1-b388e7320cf99340562efc4af2c510a0277c13094e5495061149107613fe5913.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:50:39Z";
        sha256 = "b388e7320cf99340562efc4af2c510a0277c13094e5495061149107613fe5913";
        };
      default = "r1";
      };
    };
  }