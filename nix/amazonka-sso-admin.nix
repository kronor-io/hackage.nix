{
  "2.0" = {
    sha256 = "26726b74e0a902be9477932e9b1f4846469e860b6f1d7f2e5a9b6ad4bc9ec432";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sso-admin-2.0-r0-fb719d76d5086eebdddad54016f8c2be5afea69a34f63dfbf2b6f30605cd75d0.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:48:17Z";
        sha256 = "fb719d76d5086eebdddad54016f8c2be5afea69a34f63dfbf2b6f30605cd75d0";
      };
      r1 = {
        nix = import ../hackage/amazonka-sso-admin-2.0-r1-ea96af9017013923f4bfdecef176d165ca076cc6624988ec483a82e9a37d2fd2.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:54:49Z";
        sha256 = "ea96af9017013923f4bfdecef176d165ca076cc6624988ec483a82e9a37d2fd2";
      };
      default = "r1";
    };
  };
}