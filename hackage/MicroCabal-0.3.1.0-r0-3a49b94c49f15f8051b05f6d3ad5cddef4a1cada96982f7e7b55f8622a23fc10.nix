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
      specVersion = "3.0";
      identifier = { name = "MicroCabal"; version = "0.3.1.0"; };
      license = "Apache-2.0";
      copyright = "2024 Lennart Augustsson";
      maintainer = "lennart@augustsson.net";
      author = "lennart@augustsson.net";
      homepage = "";
      url = "";
      synopsis = "A partial Cabal replacement";
      description = "A portable subset of the Cabal functionality.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mcabal" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && true) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ] ++ (pkgs.lib).optional (compiler.isMhs && true) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = true;
          };
        };
      };
    }