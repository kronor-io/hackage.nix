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
      internal-interpreter = false;
      dynamic-system-linker = true;
      build-tool-depends = true;
      with-libzstd = false;
      static-libzstd = false;
      hadrian-stage0 = false;
      bootstrap = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "ghc"; version = "9.12.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "glasgow-haskell-users@haskell.org";
      author = "The GHC Team";
      homepage = "http://www.haskell.org/ghc/";
      url = "";
      synopsis = "The GHC API";
      description = "GHC's functionality can be useful for more things than just\ncompiling Haskell programs. Important use cases are programs\nthat analyse (and perhaps transform) Haskell code. Others\ninclude loading Haskell code dynamically in a GHCi-like manner.\nFor this reason, a lot of GHC's functionality is made available\nthrough this package.\n\nSee <https://gitlab.haskell.org/ghc/ghc/-/wikis/commentary/compiler>\nfor more information.\n\n__This package is not PVP-compliant.__\n\nThis package directly exposes GHC internals, which can and do change with\nevery release.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.setupDepError "containers")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          ] ++ (if flags.bootstrap
          then [
            (hsPkgs."ghc-boot-th-next" or (errorHandler.buildDepError "ghc-boot-th-next"))
            ]
          else [
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        libs = (pkgs.lib).optionals (flags.with-libzstd) (if flags.static-libzstd
          then (pkgs.lib).optional (!system.isOsx) (pkgs.":libzstd.a" or (errorHandler.sysDepError ":libzstd.a"))
          else [ (pkgs."zstd" or (errorHandler.sysDepError "zstd")) ]);
        build-tools = (pkgs.lib).optionals (flags.build-tool-depends) [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.buildPackages.genprimopcode.components.exes.genprimopcode or (pkgs.buildPackages.genprimopcode or (errorHandler.buildToolDepError "genprimopcode:genprimopcode")))
          (hsPkgs.buildPackages.deriveConstants.components.exes.deriveConstants or (pkgs.buildPackages.deriveConstants or (errorHandler.buildToolDepError "deriveConstants:deriveConstants")))
          ];
        buildable = if flags.with-libzstd
          then if flags.static-libzstd
            then if system.isOsx then false else true
            else true
          else true;
        };
      };
    }