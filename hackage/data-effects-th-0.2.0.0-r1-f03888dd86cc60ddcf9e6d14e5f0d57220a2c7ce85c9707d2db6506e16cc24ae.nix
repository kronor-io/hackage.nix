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
      identifier = { name = "data-effects-th"; version = "0.2.0.0"; };
      license = "MPL-2.0 AND BSD-3-Clause";
      copyright = "2023-2024 Sayo Koyoneda,\n2020 Michael Szvetits,\n2010-2011 Patrick Bahr";
      maintainer = "Sayo Koyoneda <ymdfield@outlook.jp>";
      author = "Sayo Koyoneda <ymdfield@outlook.jp>";
      homepage = "";
      url = "";
      synopsis = "Template Haskell utilities for the data-effects library.";
      description = "TemplateHaskell functions for deriving effect invocation\nfunctions, [HFunctor](https://hackage.haskell.org/package/data-effects-core-0.1.0.0/docs/Data-Effect-HFunctor.html#t:HFunctor)\ninstances, and more from the definition of effects\nwith [data-effects](https://hackage.haskell.org/package/data-effects)-based GADT representations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-effects-core" or (errorHandler.buildDepError "data-effects-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          ];
        buildable = true;
        };
      tests = {
        "Example" = {
          depends = [
            (hsPkgs."data-effects-th" or (errorHandler.buildDepError "data-effects-th"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-effects-core" or (errorHandler.buildDepError "data-effects-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }