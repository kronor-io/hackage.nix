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
      identifier = { name = "ghc-typelits-extra"; version = "0.4.8"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016, University of Twente,\n2017-2018, QBayLogic B.V.";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "Additional type-level operations on GHC.TypeLits.Nat";
      description = "Additional type-level operations on @GHC.TypeLits.Nat@:\n\n* @Max@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>\n\n* @Min@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>\n\n* @Div@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>\n\n* @Mod@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>\n\n* @FLog@: type-level equivalent of <https://hackage.haskell.org/package/base-4.17.0.0/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\ni.e. the exact integer equivalent to @floor (logBase x y)@\n\n* @CLog@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/base-4.17.0.0/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\ni.e. the exact integer equivalent to @ceiling (logBase x y)@\n\n* @Log@: type-level equivalent of <https://hackage.haskell.org/package/base-4.17.0.0/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\nwhere the operation only reduces when @floor (logBase b x) ~ ceiling (logBase b x)@\n\n* @GCD@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>\n\n* @LCM@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>\n\nAnd a custom solver for the above operations defined in\n@GHC.TypeLits.Extra.Solver@ as a GHC type-checker plugin. To use the plugin,\nadd the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver\n@\n\npragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
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
        "test-ghc-typelits-extra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }