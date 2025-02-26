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
      identifier = { name = "benchpress"; version = "0.2.2.25"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@willsewell.com";
      author = "Johan Tibell";
      homepage = "https://github.com/WillSewell/benchpress";
      url = "";
      synopsis = "Micro-benchmarking with detailed statistics.";
      description = "Benchmarks actions and produces statistics\nsuch as min, mean, median, standard deviation,\nand max execution time.  Also computes\nexecution time percentiles.  Comes with\nfunctions to pretty-print the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }