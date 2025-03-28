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
      fast-bignum = false;
      homebrew-openssl = false;
      macports-openssl = false;
      use-pkg-config = false;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "HsOpenSSL"; version = "0.11.7.9"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Vladimir Shabanov <dev@vshabanov.com>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/haskell-cryptography/HsOpenSSL";
      url = "";
      synopsis = "Partial OpenSSL binding for Haskell";
      description = "HsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (pkgs.lib).optional (flags.fast-bignum && (compiler.isGhc && (compiler.version).ge "7.10.1")) (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"));
        libs = (pkgs.lib).optionals (!flags.use-pkg-config) [
          (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
          (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          ];
        pkgconfig = (pkgs.lib).optionals (flags.use-pkg-config) [
          (pkgconfPkgs."libssl" or (errorHandler.pkgConfDepError "libssl"))
          (pkgconfPkgs."libcrypto" or (errorHandler.pkgConfDepError "libcrypto"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-dsa" = {
          depends = [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-der" = {
          depends = [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "test-evp-base64" = {
          depends = [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-evp-digest" = {
          depends = [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }