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
      identifier = { name = "hinotify"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom McLaughlin <tom@codedown.io>";
      author = "Lennart Kolmodin";
      homepage = "https://github.com/kolmodin/hinotify";
      url = "";
      synopsis = "Haskell binding to inotify";
      description = "This library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        libs = (pkgs.lib).optional (system.isFreebsd || system.isNetbsd || system.isOpenbsd) (pkgs."inotify" or (errorHandler.sysDepError "inotify"));
        buildable = true;
        };
      tests = {
        "test001" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "test002" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "test003" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "test004" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "test005" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "test006" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }