{
  "0.1.0.0" = {
    sha256 = "217a72c43c448199274c8102d24062e1ff1955d09b320682b435561db9c8674c";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-hoogle-0.1.0.0-r0-fc38ad708bc536d99c010d130bf5823b5b1fa08e3b1e5075071f3f5964d84a1a.nix;
        revNum = 0;
        revTimestamp = "2022-07-23T14:40:58Z";
        sha256 = "fc38ad708bc536d99c010d130bf5823b5b1fa08e3b1e5075071f3f5964d84a1a";
      };
      r1 = {
        nix = import ../hackage/cabal-hoogle-0.1.0.0-r1-2a1ddf12c8c00068733c58ee3864893334f32ef521c503fc881f873ad1096c64.nix;
        revNum = 1;
        revTimestamp = "2022-07-23T14:44:56Z";
        sha256 = "2a1ddf12c8c00068733c58ee3864893334f32ef521c503fc881f873ad1096c64";
      };
      r2 = {
        nix = import ../hackage/cabal-hoogle-0.1.0.0-r2-50f00f244858a099ccf343b091f284ec8bc868bd7f8b6105d931e54231cf8628.nix;
        revNum = 2;
        revTimestamp = "2022-07-24T13:36:30Z";
        sha256 = "50f00f244858a099ccf343b091f284ec8bc868bd7f8b6105d931e54231cf8628";
      };
      r3 = {
        nix = import ../hackage/cabal-hoogle-0.1.0.0-r3-0da85464d2a4f74462766ca75ea3d593c2a617d09d13db863d9ae33bb6402aa3.nix;
        revNum = 3;
        revTimestamp = "2022-07-28T03:23:05Z";
        sha256 = "0da85464d2a4f74462766ca75ea3d593c2a617d09d13db863d9ae33bb6402aa3";
      };
      default = "r3";
    };
  };
  "3.10.0.0" = {
    sha256 = "d6fbb70434cd20bfbf62ce23bb06c9ad3a8ef0857cc53c70cf4b84f0ba589b5e";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-hoogle-3.10.0.0-r0-5f1243b2814f2a28e87bbd992b4683ca36384354c44e27a509a36628b4df0a21.nix;
        revNum = 0;
        revTimestamp = "2024-02-25T11:35:42Z";
        sha256 = "5f1243b2814f2a28e87bbd992b4683ca36384354c44e27a509a36628b4df0a21";
      };
      r1 = {
        nix = import ../hackage/cabal-hoogle-3.10.0.0-r1-a4414f82c419f0309f40b87d3cf8a3c3a6ec67863766b53b0ca62d6620b77342.nix;
        revNum = 1;
        revTimestamp = "2024-09-30T21:07:19Z";
        sha256 = "a4414f82c419f0309f40b87d3cf8a3c3a6ec67863766b53b0ca62d6620b77342";
      };
      default = "r1";
    };
  };
}