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
      identifier = { name = "qtah-qt6"; version = "0.9.1"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2025 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "https://khumba.net/projects/qtah";
      url = "";
      synopsis = "Qt bindings for Haskell";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains the Haskell\nside of the bindings, and is what Qt programs should use directly.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.qtah-generator or (pkgs.buildPackages.qtah-generator or (errorHandler.setupDepError "qtah-generator")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
          (hsPkgs."qtah-cpp-qt6" or (errorHandler.buildDepError "qtah-cpp-qt6"))
          (hsPkgs."qtah-generator" or (errorHandler.buildDepError "qtah-generator"))
          ];
        libs = [ (pkgs."qtah" or (errorHandler.sysDepError "qtah")) ];
        buildable = true;
        };
      tests = {
        "test-qtah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."qtah-qt6" or (errorHandler.buildDepError "qtah-qt6"))
            ];
          buildable = true;
          };
        };
      };
    }