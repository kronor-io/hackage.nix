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
      specVersion = "1.8";
      identifier = { name = "hs-php-session"; version = "0.0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Edward L. Blake";
      maintainer = "mail@edwardlblake.com";
      author = "Edward L. Blake";
      homepage = "https://codeberg.org/elblake/hs-php-session";
      url = "";
      synopsis = "PHP session and values serialization";
      description = "A library for encoding and decoding serialized PHP sessions in the format\nused by the \\\"php\\\" setting for session.serialize_handler as well as\nencoding and decoding serialized values.";
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