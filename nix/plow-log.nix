{
  "0.1.6.0" = {
    sha256 = "5f374c016cd57e23ce5e8381486c0e693d3c8203a4e5354ddd04c17e054161ed";
    revisions = {
      r0 = {
        nix = import ../hackage/plow-log-0.1.6.0-r0-a649957ba4835de7843454bb0b8b69d723b82063869990ad3127f60e2a709dd1.nix;
        revNum = 0;
        revTimestamp = "2022-11-23T15:16:33Z";
        sha256 = "a649957ba4835de7843454bb0b8b69d723b82063869990ad3127f60e2a709dd1";
      };
      r1 = {
        nix = import ../hackage/plow-log-0.1.6.0-r1-74ee3ca911b2ff0124bb85dd0ceb5e6afc7f8a1db9b7dba243d81793f15b9c02.nix;
        revNum = 1;
        revTimestamp = "2022-11-30T07:30:15Z";
        sha256 = "74ee3ca911b2ff0124bb85dd0ceb5e6afc7f8a1db9b7dba243d81793f15b9c02";
      };
      default = "r1";
    };
  };
}