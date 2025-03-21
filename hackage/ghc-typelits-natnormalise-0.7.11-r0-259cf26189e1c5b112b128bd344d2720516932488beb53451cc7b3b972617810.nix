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
    flags = { deverror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-natnormalise"; version = "0.7.11"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016, University of Twente,\n2017-2018, QBayLogic B.V.";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "GHC typechecker plugin for types of kind GHC.TypeLits.Nat";
      description = "A type checker plugin for GHC that can solve /equalities/ and /inequalities/\nof types of kind @Nat@, where these types are either:\n\n* Type-level naturals\n\n* Type variables\n\n* Applications of the arithmetic expressions @(+,-,*,^)@.\n\nIt solves these equalities by normalising them to /sort-of/ @SOP@\n(Sum-of-Products) form, and then perform a simple syntactic equality.\n\nFor example, this solver can prove the equality between:\n\n@\n(x + 2)^(y + 2)\n@\n\nand\n\n@\n4*x*(2 + x)^y + 4*(2 + x)^y + (2 + x)^y*x^2\n@\n\nBecause the latter is actually the @SOP@ normal form of the former.\n\nTo use the plugin, add the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.Normalise\n@\n\nPragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "9.0.0"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4" && (compiler.isGhc && (compiler.version).lt "9.11")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.11" && (compiler.isGhc && (compiler.version).lt "9.13")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }