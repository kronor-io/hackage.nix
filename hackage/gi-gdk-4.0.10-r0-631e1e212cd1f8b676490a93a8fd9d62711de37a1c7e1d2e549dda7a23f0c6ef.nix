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
      specVersion = "2.0";
      identifier = { name = "gi-gdk"; version = "4.0.10"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Gdk bindings (compatibility layer)";
      description = "This package re-exports (for backward compatibility)\nthe haskell-gi generated bindings in the gi-gdk4 package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.haskell-gi or (pkgs.buildPackages.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
        (hsPkgs.buildPackages.gi-gdk4 or (pkgs.buildPackages.gi-gdk4 or (errorHandler.setupDepError "gi-gdk4")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gi-gdk4" or (errorHandler.buildDepError "gi-gdk4"))
          ];
        buildable = true;
        };
      };
    }