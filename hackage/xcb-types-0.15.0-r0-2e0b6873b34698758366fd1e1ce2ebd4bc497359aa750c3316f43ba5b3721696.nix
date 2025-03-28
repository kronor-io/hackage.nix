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
      identifier = { name = "xcb-types"; version = "0.15.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "Antoine Latter";
      homepage = "http://community.haskell.org/~aslatter/code/xcb-types";
      url = "";
      synopsis = "Parses XML files used by the XCB project";
      description = "This package provides types which mirror the structures\nused in the XCB code generation XML files.\n\nSee project http://xcb.freedesktop.org/ for more information about the XCB\nproject.\n\nThe XML files describe the data-types, events and requests used by the\nX Protocol, and are used to auto-generate large parts of the XCB project.\n\nThis package parses these XML files into Haskell data structures.\n\nIf you want to do something with these XML descriptions but don't want\nto learn XSLT, this package should help.\n\nThis version of xcb-types is intended to fully parse the X Protocol\ndescription version 1.17.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }