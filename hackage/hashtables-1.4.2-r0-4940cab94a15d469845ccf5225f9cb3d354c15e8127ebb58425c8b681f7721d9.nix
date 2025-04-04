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
      unsafe-tricks = true;
      bounds-checking = false;
      debug = false;
      detailed-profiling = false;
      sse42 = false;
      portable = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "hashtables"; version = "1.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2014, Google, Inc., 2016-present contributors";
      maintainer = "greg@gregorycollins.net, mgoremeier@gmail.com, erikd@mega-nerd.com";
      author = "Gregory Collins";
      homepage = "http://github.com/gregorycollins/hashtables";
      url = "";
      synopsis = "Mutable hash tables in the ST monad";
      description = "This package provides a couple of different implementations of mutable hash\ntables in the ST monad, as well as a typeclass abstracting their common\noperations, and a set of wrappers to use the hash tables in the IO monad.\n\n/QUICK START/: documentation for the hash table operations is provided in the\n\"Data.HashTable.Class\" module, and the IO wrappers (which most users will\nprobably prefer) are located in the \"Data.HashTable.IO\" module.\n\nThis package currently contains three hash table implementations:\n\n1. \"Data.HashTable.ST.Cuckoo\" contains an implementation of \\\"cuckoo\nhashing\\\" as introduced by Pagh and Rodler in 2001 (see\n<http://en.wikipedia.org/wiki/Cuckoo_hashing>). Cuckoo hashing has\nworst-case /O(1)/ lookups and can reach a high \\\"load factor\\\", in which\nthe table can perform acceptably well even when approaching 90% full.\nRandomized testing shows this implementation of cuckoo hashing to be\nslightly faster on insert and slightly slower on lookup than\n\"Data.HashTable.ST.Basic\", while being more space efficient by about a\nhalf-word per key-value mapping. Cuckoo hashing, like the basic hash\ntable implementation using linear probing, can suffer from long delays\nwhen the table is resized.\n\n2. \"Data.HashTable.ST.Basic\" contains a basic open-addressing hash table\nusing linear probing as the collision strategy. On a pure speed basis it\nshould currently be the fastest available Haskell hash table\nimplementation for lookups, although it has a higher memory overhead\nthan the other tables and can suffer from long delays when the table is\nresized because all of the elements in the table need to be rehashed.\n\n3. \"Data.HashTable.ST.Linear\" contains a linear hash table (see\n<http://en.wikipedia.org/wiki/Linear_hashing>), which trades some insert\nand lookup performance for higher space efficiency and much shorter\ndelays when expanding the table. In most cases, benchmarks show this\ntable to be currently slightly faster than @Data.HashTable@ from the\nHaskell base library.\n\nIt is recommended to create a concrete type alias in your code when using this\npackage, i.e.:\n\n> import qualified Data.HashTable.IO as H\n>\n> type HashTable k v = H.BasicHashTable k v\n>\n> foo :: IO (HashTable Int Int)\n> foo = do\n>     ht <- H.new\n>     H.insert ht 1 1\n>     return ht\n\nFirstly, this makes it easy to switch to a different hash table implementation,\nand secondly, using a concrete type rather than leaving your functions abstract\nin the HashTable class should allow GHC to optimize away the typeclass\ndictionaries.\n\nThis package accepts a couple of different cabal flags:\n\n* @unsafe-tricks@, default /ON/. If this flag is enabled, we use some\nunsafe GHC-specific tricks to save indirections (namely @unsafeCoerce#@\nand @reallyUnsafePtrEquality#@. These techniques rely on assumptions\nabout the behaviour of the GHC runtime system and, although they've been\ntested and should be safe under normal conditions, are slightly\ndangerous. Caveat emptor. In particular, these techniques are\nincompatible with HPC code coverage reports.\n\n* @sse42@, default /OFF/. If this flag is enabled, we use some SSE 4.2\ninstructions (see <http://en.wikipedia.org/wiki/SSE4>, first available on\nIntel Core 2 processors) to speed up cache-line searches for cuckoo\nhashing.\n\n* @bounds-checking@, default /OFF/. If this flag is enabled, array accesses\nare bounds-checked.\n\n* @debug@, default /OFF/. If turned on, we'll rudely spew debug output to\nstdout.\n\n* @portable@, default /OFF/. If this flag is enabled, we use only pure\nHaskell code and try not to use unportable GHC extensions. Turning this\nflag on forces @unsafe-tricks@ and @sse42@ /OFF/.\n\nPlease send bug reports to\n<https://github.com/gregorycollins/hashtables/issues>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.portable && flags.unsafe-tricks && (compiler.isGhc && true)) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (!flags.portable && flags.unsafe-tricks && (compiler.isGhc && true)) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }