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
      identifier = { name = "lawful-conversions"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2022 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/lawful-conversions";
      url = "";
      synopsis = "Lawful typeclasses for bidirectional conversion between types";
      description = "# Summary\n\nLawful typeclasses capturing three main patterns of bidirectional mapping. The typeclasses form a layered hierarchy with ascending strictness of laws:\n\n1. `IsSome`: Smart constructor pattern\n\n2. `IsMany`: Lossy conversion\n\n3. `Is`: Isomorphism (lossless conversion)\n\n# The conversion problem\n\nHave you ever looked for a `toString` function? How often do you\nimport `Data.Text.Lazy` only to call its `Data.Text.Lazy.fromStrict`? How\nabout importing `Data.ByteString.Builder` only to call its\n`Data.ByteString.Builder.toLazyByteString` and then importing\n`Data.ByteString.Lazy` only to call its `Data.ByteString.Lazy.toStrict`?\n\nThose all are instances of one pattern. They are conversions between\nrepresentations of the same information. Codebases that don't attempt to\nabstract over this pattern tend to be sprawling with this type of\nboilerplate. It's noise to the codereader, it's a burden to the\nimplementor and the maintainer.\n\n# Why another conversion library?\n\nMany libraries exist that approach the conversion problem. However most of\nthem provide lawless typeclasses leaving it up to the author of the\ninstance to define what makes a proper conversion. This results in\ninconsistencies across instances, their behaviour not being evident to\nthe user and no way to check whether an instance is correct.\n\nThis library tackles this problem with a lawful typeclass hierarchy, making it\nevident what any of its instances do and it provides property-tests for you\nto validate your instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lawful-conversions" or (errorHandler.buildDepError "lawful-conversions"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rebase" or (errorHandler.buildDepError "rebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }