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
      specVersion = "3.0";
      identifier = { name = "one-line-aeson-text"; version = "0.1.0.6"; };
      license = "Apache-2.0";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/one-line-aeson-text";
      url = "";
      synopsis = "Pretty-printing short Aeson values as text";
      description = "A very simply pretty-printer for Aeson values that\nproduces single-line output, which you may want for\ndisplaying short JSON data in log files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-one-line-aeson-text" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."one-line-aeson-text" or (errorHandler.buildDepError "one-line-aeson-text"))
            ];
          buildable = true;
          };
        };
      };
    }