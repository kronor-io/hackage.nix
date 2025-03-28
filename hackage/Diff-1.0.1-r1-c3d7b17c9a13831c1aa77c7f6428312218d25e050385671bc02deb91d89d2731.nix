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
      identifier = { name = "Diff"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "Sterling Clover";
      homepage = "https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.4.6927";
      url = "";
      synopsis = "Diff algorithm in pure Haskell";
      description = "Implementation of the standard diff algorithm in Haskell.\n\nTime complexity is O(ND) (input length * number of differences).\nSpace complexity is O(D^2).  Includes utilities for pretty printing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      tests = {
        "diff-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }