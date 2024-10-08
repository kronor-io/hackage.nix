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
    flags = {
      with-openssl = true;
      benchmark-cryptonite = false;
      test-cryptonite = false;
      openssl-use-pkg-config = false;
      };
    package = {
      specVersion = "3.0";
      identifier = { name = "hashes"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2019-2024 Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "lakuhtz@gmail.com";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/hs-hashes";
      url = "";
      synopsis = "Hash functions";
      description = "Efficient implementations of hash functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (!flags.openssl-use-pkg-config) (pkgs."crypto" or (errorHandler.sysDepError "crypto")));
        pkgconfig = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (flags.openssl-use-pkg-config) (pkgconfPkgs."libcrypto" or (errorHandler.pkgConfDepError "libcrypto")));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."hashes" or (errorHandler.buildDepError "hashes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (flags.with-openssl) (hsPkgs."sha-validation" or (errorHandler.buildDepError "sha-validation"))) ++ (pkgs.lib).optionals (flags.test-cryptonite) [
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ];
          libs = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (!flags.openssl-use-pkg-config) (pkgs."crypto" or (errorHandler.sysDepError "crypto")));
          pkgconfig = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (flags.openssl-use-pkg-config) (pkgconfPkgs."libcrypto" or (errorHandler.pkgConfDepError "libcrypto")));
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."hashes" or (errorHandler.buildDepError "hashes"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ] ++ (pkgs.lib).optionals (flags.benchmark-cryptonite) [
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ];
          libs = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (!flags.openssl-use-pkg-config) (pkgs."crypto" or (errorHandler.sysDepError "crypto")));
          pkgconfig = (pkgs.lib).optionals (flags.with-openssl) ((pkgs.lib).optional (flags.openssl-use-pkg-config) (pkgconfPkgs."libcrypto" or (errorHandler.pkgConfDepError "libcrypto")));
          buildable = true;
          };
        };
      };
    }