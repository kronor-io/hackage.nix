{
  "1.0" = {
    sha256 = "408d8c27b366587dd6148a5eeb20c5fd009ff52302b5776cb8b539ec5111b580";
    revisions = {
      r0 = {
        nix = import ../hackage/oasis-xrd-1.0-r0-eec681e4cbec6b38a3b0960c7170b145f5bb0a334d9236feead698d525ed65ea.nix;
        revNum = 0;
        revTimestamp = "2018-04-07T20:50:32Z";
        sha256 = "eec681e4cbec6b38a3b0960c7170b145f5bb0a334d9236feead698d525ed65ea";
        };
      r1 = {
        nix = import ../hackage/oasis-xrd-1.0-r1-1a87a6bab7c43eddd6bf1edaa58c8064dcd61c9e8ae3d724fcd222eb3db39bcb.nix;
        revNum = 1;
        revTimestamp = "2018-04-07T21:00:44Z";
        sha256 = "1a87a6bab7c43eddd6bf1edaa58c8064dcd61c9e8ae3d724fcd222eb3db39bcb";
        };
      default = "r1";
      };
    };
  }