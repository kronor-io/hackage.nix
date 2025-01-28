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
      identifier = { name = "gi-gtksource"; version = "3.0.30"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GtkSource 3.x bindings (compatibility layer)";
      description = "This package re-exports (for backward compatibility)\nthe haskell-gi generated bindings in the gi-gtksource3 package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.haskell-gi or (pkgs.buildPackages.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.gi-gtksource3 or (pkgs.buildPackages.gi-gtksource3 or (errorHandler.setupDepError "gi-gtksource3")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gi-gtksource3" or (errorHandler.buildDepError "gi-gtksource3"))
          ];
        buildable = true;
        };
      };
    }