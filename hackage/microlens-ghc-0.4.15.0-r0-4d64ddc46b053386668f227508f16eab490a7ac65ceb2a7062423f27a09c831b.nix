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
      identifier = { name = "microlens-ghc"; version = "0.4.15.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Steven Fontanella <steven.fontanella@gmail.com>";
      author = "Edward Kmett, Artyom Kazak";
      homepage = "http://github.com/stevenfontanella/microlens";
      url = "";
      synopsis = "microlens + array, bytestring, containers, transformers";
      description = "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @Lens.Micro.GHC@ reexports everything from @Lens.Micro@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>, <http://hackage.haskell.org/package/transfromers transformers>).\n\nThe minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/stevenfontanella/microlens#readme on Github>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }