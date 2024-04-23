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
    flags = { optimize = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "grisette"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021-2024 Sirui Lu";
      maintainer = "Sirui Lu (siruilu@cs.washington.edu)";
      author = "Sirui Lu, Rastislav Bodík";
      homepage = "https://github.com/lsrcz/grisette#readme";
      url = "";
      synopsis = "Symbolic evaluation as a library";
      description = "Grisette is a reusable symbolic evaluation library for Haskell. By\ntranslating programs into constraints, Grisette can help the development of\nprogram reasoning tools, including verification, synthesis, and more.\n\nThis \"Grisette\" module exports all you need for building a symbolic evaluation\ntool.\n\nFor more details, please checkout the README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."grisette" or (errorHandler.buildDepError "grisette"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."grisette" or (errorHandler.buildDepError "grisette"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."intern" or (errorHandler.buildDepError "intern"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }