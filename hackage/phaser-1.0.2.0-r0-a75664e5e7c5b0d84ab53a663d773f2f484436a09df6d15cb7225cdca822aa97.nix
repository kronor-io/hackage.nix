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
      specVersion = "1.10";
      identifier = { name = "phaser"; version = "1.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "quick.dudley@gmail.com";
      author = "Jeremy List";
      homepage = "https://gitlab.com/quickdudley/phaser";
      url = "";
      synopsis = "Incremental multiple pass parser library.";
      description = "A combinator library for incremental multiple pass parsers.\nMostly inspired by the Text.ParserCombinators.ReadP module in the Base package\nand the conduit package. It has similar capabilities to ReadP as well as\nmore detailed error reporting and the capacity for multiple passes (such as\nlexing and parsing)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-phaser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."phaser" or (errorHandler.buildDepError "phaser"))
            ];
          buildable = true;
          };
        };
      };
    }