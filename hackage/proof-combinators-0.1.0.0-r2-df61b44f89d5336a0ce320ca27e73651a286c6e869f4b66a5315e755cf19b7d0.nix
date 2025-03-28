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
      identifier = { name = "proof-combinators"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nikivazou@gmail.com";
      author = "Niki Vazou";
      homepage = "http://nikivazou.github.io/";
      url = "";
      synopsis = "DEPRECATED";
      description = "Do not use this package! It is deprecated in favor of [liquid-prelude](https://hackage.haskell.org/package/liquid-prelude).\n\nIt provides proof Combinators used in Liquid Haskell for Theorem Proving";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }