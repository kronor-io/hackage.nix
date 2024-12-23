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
      identifier = { name = "perf"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2018";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day, Marco Zocca";
      homepage = "https://github.com/tonyday567/perf#readme";
      url = "";
      synopsis = "Performance methods and monad.";
      description = "A set of tools to measure performance of Haskell programs.\nSee the Perf module and readme for an example and full API documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."formatn" or (errorHandler.buildDepError "formatn"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "perf-explore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."formatn" or (errorHandler.buildDepError "formatn"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."perf" or (errorHandler.buildDepError "perf"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "perf-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."perf" or (errorHandler.buildDepError "perf"))
            ];
          buildable = true;
          };
        };
      };
    }