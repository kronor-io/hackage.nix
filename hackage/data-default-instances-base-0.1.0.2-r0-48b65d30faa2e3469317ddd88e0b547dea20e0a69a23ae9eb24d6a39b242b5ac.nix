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
      identifier = {
        name = "data-default-instances-base";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Lukas Mai";
      maintainer = "<lukasmai.403+hackage@gmail.com>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "Default instances for types in base";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        buildable = true;
      };
    };
  }