{
  "0.1" = {
    sha256 = "6feb353cbb2c5d7eef3db35f1872cb18d15f05a75627abefad91bc825dbfe2ad";
    revisions = {
      r0 = {
        nix = import ../hackage/servant-nix-0.1-r0-ce3e73b9462b2e88a6c07aa39d0031d641dd13594f99d8c9076b936d1b489674.nix;
        revNum = 0;
        revTimestamp = "2018-06-13T20:11:58Z";
        sha256 = "ce3e73b9462b2e88a6c07aa39d0031d641dd13594f99d8c9076b936d1b489674";
      };
      r1 = {
        nix = import ../hackage/servant-nix-0.1-r1-cbed6d04491cd7a3bfc15fec19d6ae0fa9cc4d64fa1b1a5982cabcec65169d40.nix;
        revNum = 1;
        revTimestamp = "2018-06-19T10:53:47Z";
        sha256 = "cbed6d04491cd7a3bfc15fec19d6ae0fa9cc4d64fa1b1a5982cabcec65169d40";
      };
      default = "r1";
    };
  };
}