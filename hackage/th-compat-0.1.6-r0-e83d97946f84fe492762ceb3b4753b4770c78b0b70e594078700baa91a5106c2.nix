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
      identifier = { name = "th-compat"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2020 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/th-compat";
      url = "";
      synopsis = "Backward- (and forward-)compatible Quote and Code types";
      description = "This package defines a \"Language.Haskell.TH.Syntax.Compat\"\nmodule, which backports the @Quote@ and @Code@ types to\nwork across a wide range of @template-haskell@ versions.\nThe @makeRelativeToProject@ utility is also backported.\nOn recent versions of @template-haskell@ (2.17.0.0 or\nlater), this module simply reexports definitions\nfrom \"Language.Haskell.TH.Syntax\". Refer to the Haddocks\nfor \"Language.Haskell.TH.Syntax.Compat\" for examples of\nhow to use this module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) [
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }