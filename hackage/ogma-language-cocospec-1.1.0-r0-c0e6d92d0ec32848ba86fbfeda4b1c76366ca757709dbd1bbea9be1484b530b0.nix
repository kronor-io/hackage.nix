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
      identifier = { name = "ogma-language-cocospec"; version = "1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perezdominguez@nasa.gov";
      author = "Ivan Perez, Alwyn Goodloe";
      homepage = "http://nasa.gov";
      url = "";
      synopsis = "Ogma: Runtime Monitor translator: CoCoSpec Language Frontend";
      description = "Ogma is a tool to facilitate the integration of safe runtime monitors into\nother systems. Ogma extends\n<https://github.com/Copilot-Language/copilot Copilot>, a high-level runtime\nverification framework that generates hard real-time C99 code.\n\nThis library contains a frontend to read CoCoSpec Boolean expressions, used by\nthe tool FRET to capture requirement specifications.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.BNFC or (pkgs.buildPackages.BNFC or (errorHandler.setupDepError "BNFC")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ogma-language-cocospec" or (errorHandler.buildDepError "ogma-language-cocospec"))
            ];
          buildable = true;
          };
        };
      };
    }