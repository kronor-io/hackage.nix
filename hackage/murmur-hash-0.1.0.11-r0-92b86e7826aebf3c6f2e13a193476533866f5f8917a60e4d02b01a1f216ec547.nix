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
      specVersion = "1.18";
      identifier = { name = "murmur-hash"; version = "0.1.0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Abel";
      author = "Thomas Schilling";
      homepage = "https://github.com/nominolo/murmur-hash";
      url = "";
      synopsis = "MurmurHash2 implementation for Haskell.";
      description = "Implements MurmurHash2, a good, fast, general-purpose,\nnon-cryptographic hashing function.\n\nThis implementation is pure Haskell, so it might be a bit slower\nthan a C FFI binding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }