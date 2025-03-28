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
      identifier = { name = "gi-gtk-layer-shell"; version = "0.1.7"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "gtk-layer-shell bindings";
      description = "Bindings for gtk-layer-shell, autogenerated by haskell-gi.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.haskell-gi or (pkgs.buildPackages.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
        (hsPkgs.buildPackages.gi-gdk3 or (pkgs.buildPackages.gi-gdk3 or (errorHandler.setupDepError "gi-gdk3")))
        (hsPkgs.buildPackages.gi-gtk3 or (pkgs.buildPackages.gi-gtk3 or (errorHandler.setupDepError "gi-gtk3")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "8.2" && (compiler.version).lt "8.3")) (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"));
        pkgconfig = [
          (pkgconfPkgs."gtk-layer-shell-0" or (errorHandler.pkgConfDepError "gtk-layer-shell-0"))
          ];
        buildable = true;
        };
      };
    }