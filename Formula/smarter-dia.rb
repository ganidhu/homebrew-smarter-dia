class SmarterDia < Formula
  include Language::Python::Virtualenv

  desc "Dia AI Intelligence & Sandbox Supercharger"
  homepage "https://github.com/ganidhu/smarter-dia"
  url "https://github.com/ganidhu/smarter-dia/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "c5f2fd52641999e81d186b3aba600d7747072362bef49e2b4263516539c7650c"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/smarter-dia --version")
  end
end
