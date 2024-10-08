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
      identifier = { name = "git-mediate"; version = "1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/git-mediate";
      url = "";
      synopsis = "Tool to help resolving git conflicts";
      description = "Git conflict resolution has never been easier\n\nWhen encountering a conflict, you can sometimes\nimagine: if only I could have applied one of\nthese patches BEFORE the other rather than\nconcurrently, I wouldn't be in this mess!\n\nWell, with git-mediate, you can!\n\nIn any conflicted state - git-mediate shows you\nthe 2 diffs involved. By applying these diffs to\nthe base version and the other version, you\nemulate the situation where the patch had already\nexisted when the other had been applied.\n\nReapply git-mediate, it will validate that you've\nindeed applied it correctly, and bam: conflict\ndisappeared!\n\nGit-mediate also lets you handle modify/delete\nconflicts (there's no sane way in git to show\nwhat the modification actually was)\n\nGit-mediate also streamlines jumping to the\nconflicts with your editor, either with the `-e`\noption to invoke your editor, or via the standard\nline number format, which is parsed by all major\neditors, to allow use of \"jump to next error\"\nkeys.\n\nGit-mediate especially shines with automatic\nsource transformation tools such as renamers.\n\nIn a conflicted state, re-apply a rename that\ncaused the conflict, run git-mediate without\nopening any files, and the conflicts are gone!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "git-mediate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }