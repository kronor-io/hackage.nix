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
      specVersion = "1.2";
      identifier = { name = "pxsl-tools"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2003-2008 Thomas G. Moertel <tom@moertel.com>";
      maintainer = "Tom Moertel <tom@moertel.com>";
      author = "Tom Moertel <tom@moertel.com>";
      homepage = "https://github.com/tmoertel/pxsl-tools";
      url = "";
      synopsis = "Parsimonious XML Shorthand Language--to-XML compiler";
      description = "The package contains the pxslcc compiler, which converts\nParsimonious XML Shorthand Language (PXSL) into XML.  PXSL (\"pixel\")\nis a convenient shorthand for writing markup-heavy XML documents.\nIt provides XML authors and programmers with a simple, concise\nsyntax that they can use to create XML documents. For more advanced\nusers, PXSL offers customizable shortcuts and sophisticated\nrefactoring tools like functional macros that can markedly reduce\nthe size and complexity of markup-dense XML documents.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pxslcc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }