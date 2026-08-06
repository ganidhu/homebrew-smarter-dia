class SmarterDia < Formula
  include Language::Python::Virtualenv

  desc "Dia AI Intelligence & Sandbox Supercharger"
  homepage "https://github.com/ganidhu/smarter-dia"
  url "https://github.com/ganidhu/smarter-dia/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "5bc64013c73133c2f36ecde9718e65f53f929af4d897695f8d4353ec9f61b1ce"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/smarter-dia --version")
  end
end
