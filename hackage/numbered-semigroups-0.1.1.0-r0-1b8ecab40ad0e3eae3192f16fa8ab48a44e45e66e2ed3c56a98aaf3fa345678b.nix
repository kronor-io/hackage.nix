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
      identifier = { name = "numbered-semigroups"; version = "0.1.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "(@) justussa $ kth.se";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/numbered-semigroups";
      url = "";
      synopsis = "A sequence of semigroups, for composing stuff in multiple spatial directions.";
      description = "Some types are composable in multiple “directions”, either in\na literal sense (<http://hackage.haskell.org/package/diagrams diagrams>\ncan be stacked vertically, as well as layed out side-by-side)\nor in an abstraction (matrices etc.). This package offers a whole\nsequence of semigroup-classes, numbered by type-literals, as\na unified interface for composition of such types. It also has\na bunch of standardised operators for writing out the compositions\nin a snug way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          ];
        buildable = true;
        };
      };
    }