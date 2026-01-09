{ fetchFromGitHub, trivialBuild }: trivialBuild {
  pname = "qml-ts-mode";
  version = "master";
  src = fetchFromGitHub {
    owner = "xhcoding";
    repo = "qml-ts-mode";
    rev = "b80c6663521b4d0083e416e6712ebc02d37b7aec";
    sha256 = "WXK/CdFF9E2kG+uIios4HtKcEMhILS9MddJfVDeRLh0=";
  };
}
