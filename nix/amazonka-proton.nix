{
  "2.0" = {
    sha256 = "fb612ec290d6272e1e8acfaec670c3ae6fe5b14f866d7478bb839dc9825968e9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-proton-2.0-r0-1aadccece9fb0d0628c45869f07a7a7791c54378f98b5c656924e0a84d2fe1cf.nix;
        revNum = 0;
        revTimestamp = "2023-07-27T21:44:00Z";
        sha256 = "1aadccece9fb0d0628c45869f07a7a7791c54378f98b5c656924e0a84d2fe1cf";
        };
      r1 = {
        nix = import ../hackage/amazonka-proton-2.0-r1-a0263328f72bb0eadc03e5dc55ffa64c7f8289c14436bab0ab76c1243237f757.nix;
        revNum = 1;
        revTimestamp = "2024-05-13T07:51:28Z";
        sha256 = "a0263328f72bb0eadc03e5dc55ffa64c7f8289c14436bab0ab76c1243237f757";
        };
      default = "r1";
      };
    };
  }