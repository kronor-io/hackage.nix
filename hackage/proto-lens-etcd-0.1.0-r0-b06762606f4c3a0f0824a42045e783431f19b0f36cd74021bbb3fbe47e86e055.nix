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
      specVersion = "2.2";
      identifier = { name = "proto-lens-etcd"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "2025 IOG";
      maintainer = "";
      author = "IOG";
      homepage = "";
      url = "";
      synopsis = "proto-lens-etcd - protobuffer lenses for etcd provided by protoc-lens-protoc";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.proto-lens-setup or (pkgs.buildPackages.proto-lens-setup or (errorHandler.setupDepError "proto-lens-setup")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens-protobuf-types" or (errorHandler.buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.proto-lens-protoc.components.exes.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc or (errorHandler.buildToolDepError "proto-lens-protoc:proto-lens-protoc")))
          ];
        buildable = true;
        };
      };
    }