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
    flags = { deepseq = true; transformers = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tagged"; version = "0.8.9"; };
      license = "BSD-3-Clause";
      copyright = "2009-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/tagged";
      url = "";
      synopsis = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
      description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.transformers) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
        };
      };
    }