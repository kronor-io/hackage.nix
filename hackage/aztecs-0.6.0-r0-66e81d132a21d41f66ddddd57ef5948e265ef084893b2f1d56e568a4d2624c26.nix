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
      identifier = { name = "aztecs"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@hunzinger.me";
      author = "Matt Hunzinger";
      homepage = "https://github.com/matthunz/aztecs";
      url = "";
      synopsis = "A type-safe and friendly Entity-Component-System (ECS) for Haskell";
      description = "The Entity-Component-System (ECS) pattern is commonly used in video game develop to represent world objects.\n\nECS follows the principal of composition over inheritence. Each type of\nobject (e.g. sword, monster, etc), in the game has a unique EntityId. Each\nentity has various Components associated with it (material, weight, damage, etc).\nSystems act on entities which have the required Components.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      tests = {
        "aztecs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "aztecs-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aztecs" or (errorHandler.buildDepError "aztecs"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }