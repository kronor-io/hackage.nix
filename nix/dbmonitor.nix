{
  "0.1.0" = {
    sha256 = "4380ce0a771cf61e3ce0d0b94658e4282a10af2ae46bdf71aff54d79b271420a";
    revisions = {
      r0 = {
        nix = import ../hackage/dbmonitor-0.1.0-r0-4d54deede668ff5442963cde1b87ec9d999c9df3179f0b8308a8b654f509e1e3.nix;
        revNum = 0;
        revTimestamp = "2022-07-19T15:18:56Z";
        sha256 = "4d54deede668ff5442963cde1b87ec9d999c9df3179f0b8308a8b654f509e1e3";
        };
      r1 = {
        nix = import ../hackage/dbmonitor-0.1.0-r1-cfe12d8beaa6b2be11d7a5ca05bc890711ab7aad0542a21af19b1a7220d3444f.nix;
        revNum = 1;
        revTimestamp = "2022-10-21T07:20:22Z";
        sha256 = "cfe12d8beaa6b2be11d7a5ca05bc890711ab7aad0542a21af19b1a7220d3444f";
        };
      default = "r1";
      };
    };
  }