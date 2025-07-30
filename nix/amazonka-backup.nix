{
  "2.0" = {
    sha256 = "989e41efeb2947823cbb7de4862c111aeafc03462842002f417c22fdc7975fd4";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-backup-2.0-r0-0e6c83bea090f1d0b3e0a95e053f1b70c735781ca7fb41f44218c5dcb1c70c35.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:05:48Z";
        sha256 = "0e6c83bea090f1d0b3e0a95e053f1b70c735781ca7fb41f44218c5dcb1c70c35";
      };
      r1 = {
        nix = import ../hackage/amazonka-backup-2.0-r1-2854871fe8a1cda47e6da56ddc32287c1f2334af2fefd05636dfd9de14ad1b3c.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:35:30Z";
        sha256 = "2854871fe8a1cda47e6da56ddc32287c1f2334af2fefd05636dfd9de14ad1b3c";
      };
      default = "r1";
    };
  };
}