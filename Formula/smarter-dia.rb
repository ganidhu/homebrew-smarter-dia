class SmarterDia < Formula
  include Language::Python::Virtualenv

  desc "Dia AI Intelligence & Sandbox Supercharger"
  homepage "https://github.com/ganidhu/smarter-dia"
  url "https://github.com/ganidhu/smarter-dia/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9f065b1a979af0183f8656e46d726661d4e38af5acaf9327752d19b5bbc9e0f4"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/smarter-dia --version")
  end
end
