{
  "0.0.0.0" = {
    sha256 = "bb85f6f4fbbfa3677f6548be57f47fafc977c7fdec5c4d2eec49707ec5d97c26";
    revisions = {
      r0 = {
        nix = import ../hackage/curry-0.0.0.0-r0-ec4b5c3478e678c5f6fde12d8e1fe07a933fb4359cea40762b1f8ae041c876a4.nix;
        revNum = 0;
        revTimestamp = "2018-01-25T04:07:26Z";
        sha256 = "ec4b5c3478e678c5f6fde12d8e1fe07a933fb4359cea40762b1f8ae041c876a4";
      };
      r1 = {
        nix = import ../hackage/curry-0.0.0.0-r1-8b9eaa7d989c52283175b80dd2a45e5cc2dc8fa07f3d5d9a57fd7a24c52162d5.nix;
        revNum = 1;
        revTimestamp = "2020-02-11T07:26:11Z";
        sha256 = "8b9eaa7d989c52283175b80dd2a45e5cc2dc8fa07f3d5d9a57fd7a24c52162d5";
      };
      r2 = {
        nix = import ../hackage/curry-0.0.0.0-r2-37ce84057beb9ac17a04064e47da5584158cd92453692347b5bf6f793cfa7495.nix;
        revNum = 2;
        revTimestamp = "2020-04-10T05:03:01Z";
        sha256 = "37ce84057beb9ac17a04064e47da5584158cd92453692347b5bf6f793cfa7495";
      };
      default = "r2";
    };
  };
}