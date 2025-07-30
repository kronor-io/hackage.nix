{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "data-effects-core"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "2023-2024 Sayo Koyoneda";
      maintainer = "Sayo Koyoneda <ymdfield@outlook.jp>";
      author = "Sayo Koyoneda <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "A basic framework for effect systems based on effects represented by GADTs.";
      description = "This library provides core definitions of [data-effects](https://hackage.haskell.org/package/data-effects).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."data-effects-core" or (errorHandler.buildDepError "data-effects-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }