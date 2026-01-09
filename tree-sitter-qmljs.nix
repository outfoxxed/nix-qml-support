{ fetchFromGitHub, tree-sitter }: tree-sitter.buildGrammar {
  language = "qmljs";
  version = "master";
  src = fetchFromGitHub {
    owner = "yuja";
    repo = "tree-sitter-qmljs";
    rev = "0bec4359a7eb2f6c9220cd57372d87d236f66d59";
    sha256 = "tV4lipey+OAQwygRFp9lQAzgCNiZzSu7p3Mr6CCBH1g=";
  };
}
