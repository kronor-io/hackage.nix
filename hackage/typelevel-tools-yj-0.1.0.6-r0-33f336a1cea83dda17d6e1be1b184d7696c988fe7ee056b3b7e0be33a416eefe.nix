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
      specVersion = "1.12";
      identifier = { name = "typelevel-tools-yj"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/typelevel-tools#readme";
      url = "";
      synopsis = "type level tools";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/typelevel-tools#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "typelevel-tools-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."typelevel-tools" or (errorHandler.buildDepError "typelevel-tools"))
            ];
          buildable = true;
          };
        };
      };
    }