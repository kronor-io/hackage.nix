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
      specVersion = "1.18";
      identifier = { name = "distribution-nixpkgs"; version = "1.7.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sternenseemann <sternenseemann@systemli.org>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "https://github.com/NixOS/cabal2nix/tree/master/distribution-nixpkgs#readme";
      url = "";
      synopsis = "Types and functions to manipulate the Nixpkgs distribution";
      description = "Types and functions to represent, query, and manipulate the Nixpkgs distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."distribution-nixpkgs" or (errorHandler.buildDepError "distribution-nixpkgs"))
            (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }