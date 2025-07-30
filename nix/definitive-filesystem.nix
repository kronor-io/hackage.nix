{
  "1.2" = {
    sha256 = "2d22b782dfb24050df054b85ff1662f3042c49edad2bb98aa8ebe3f8224a802d";
    revisions = {
      r0 = {
        nix = import ../hackage/definitive-filesystem-1.2-r0-47eeacf4c85df69a231d61ce1f85ceabb4e69f6a5d3894dd95ce4bba05b8eb96.nix;
        revNum = 0;
        revTimestamp = "2014-07-13T00:37:27Z";
        sha256 = "47eeacf4c85df69a231d61ce1f85ceabb4e69f6a5d3894dd95ce4bba05b8eb96";
      };
      r1 = {
        nix = import ../hackage/definitive-filesystem-1.2-r1-3a78d4d8aaa291ca95d889b62a979c4132bbe6f91073ab2bd9fdb0d55ed63121.nix;
        revNum = 1;
        revTimestamp = "2014-07-13T20:25:07Z";
        sha256 = "3a78d4d8aaa291ca95d889b62a979c4132bbe6f91073ab2bd9fdb0d55ed63121";
      };
      default = "r1";
    };
  };
}