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
      specVersion = "1.24";
      identifier = { name = "liquid-parallel"; version = "3.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "LiquidHaskell specs for the parallel package";
      description = "LiquidHaskell specs for the parallel package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.liquidhaskell or (pkgs.pkgsBuildBuild.liquidhaskell or (errorHandler.setupDepError "liquidhaskell")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
        ];
        buildable = true;
      };
    };
  }