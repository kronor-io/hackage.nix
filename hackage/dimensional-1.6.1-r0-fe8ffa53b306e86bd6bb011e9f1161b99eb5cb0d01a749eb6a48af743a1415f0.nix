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
    flags = { binary = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dimensional"; version = "1.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2006-2024";
      maintainer = "bjorn@buckwalter.se";
      author = "Bjorn Buckwalter";
      homepage = "https://github.com/bjornbm/dimensional/";
      url = "";
      synopsis = "Statically checked physical dimensions";
      description = "Dimensional is a library providing data types for performing arithmetic\nwith physical quantities and units. Information about the physical\ndimensions of the quantities and units is embedded in their types and the\nvalidity of operations is verified by the type checker at compile time.\nThe wrapping and unwrapping of numerical values as quantities is done by\nmultiplication and division with units. The library is designed to, as\nfar as is practical, enforce/encourage best practices of unit usage.\nVersion 1 of the dimensional package differs from earlier version in that\nthe dimension tracking is implemented using Closed Type Families and Data Kinds\nrather than functional dependencies. This enables a number of features, including\nimproved support for unit names and quantities with statically-unknown dimensions.\nRequires GHC 8.0 or later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exact-pi" or (errorHandler.buildDepError "exact-pi"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."numtype-dk" or (errorHandler.buildDepError "numtype-dk"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."dimensional" or (errorHandler.buildDepError "dimensional"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."dimensional" or (errorHandler.buildDepError "dimensional"))
            ];
          buildable = true;
          };
        };
      };
    }