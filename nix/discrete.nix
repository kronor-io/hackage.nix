{
  "0.1.0.0" = {
    sha256 = "5ce87fa8ed2109f1805f3d8ac977698cdf19c012c119261eb8f1574cc3ce08a1";
    revisions = {
      r0 = {
        nix = import ../hackage/discrete-0.1.0.0-r0-c0682898a7755efeeaf5bcbde0585c8c921698106f9078cada204d6606de8178.nix;
        revNum = 0;
        revTimestamp = "2018-09-17T17:24:12Z";
        sha256 = "c0682898a7755efeeaf5bcbde0585c8c921698106f9078cada204d6606de8178";
      };
      r1 = {
        nix = import ../hackage/discrete-0.1.0.0-r1-70625ce5265aa9de4d1aafa37683f6210b0eb1bbaaa91a6e4ac03f017d0f3eab.nix;
        revNum = 1;
        revTimestamp = "2018-09-17T18:35:30Z";
        sha256 = "70625ce5265aa9de4d1aafa37683f6210b0eb1bbaaa91a6e4ac03f017d0f3eab";
      };
      default = "r1";
    };
  };
}