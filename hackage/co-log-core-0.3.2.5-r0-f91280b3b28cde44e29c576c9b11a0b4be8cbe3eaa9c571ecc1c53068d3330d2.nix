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
      specVersion = "2.4";
      identifier = { name = "co-log-core"; version = "0.3.2.5"; };
      license = "MPL-2.0";
      copyright = "2018-2020 Kowainik, 2021-2025 Co-Log";
      maintainer = "Co-Log <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/co-log/co-log-core";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "This package provides core types and functions to work with the @LogAction@ data type which is both simple and powerful.\n\n@\n__newtype__ LogAction m msg = LogAction\n\\    { unLogAction :: msg -> m ()\n\\    }\n@\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)\n\nSee the following packages for different implementations based on @co-log-core@:\n\n* [co-log](http://hackage.haskell.org/package/co-log): taggless final implementations.\n* [co-log-polysemy](http://hackage.haskell.org/package/co-log-polysemy): extensible\neffects implementation based on @polysemy@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }