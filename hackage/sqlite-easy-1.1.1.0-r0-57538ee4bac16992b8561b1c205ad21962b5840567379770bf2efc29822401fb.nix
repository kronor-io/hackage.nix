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
      identifier = { name = "sqlite-easy"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2024 Gil Mizrahi";
      maintainer = "gil@gilmi.net";
      author = "Gil Mizrahi";
      homepage = "https://gitlab.com/gilmi/sqlite-easy";
      url = "";
      synopsis = "A primitive yet easy to use sqlite library.";
      description = "A primitive yet easy to use sqlite library built using sqlite-direct, resource-pool and migrant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."migrant-core" or (errorHandler.buildDepError "migrant-core"))
          ];
        buildable = true;
        };
      tests = {
        "sqlite-easy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."sqlite-easy" or (errorHandler.buildDepError "sqlite-easy"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "sqlite-easy-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."sqlite-easy" or (errorHandler.buildDepError "sqlite-easy"))
            ];
          buildable = true;
          };
        };
      };
    }