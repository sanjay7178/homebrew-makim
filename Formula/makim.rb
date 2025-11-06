class Makim < Formula
  include Language::Python::Virtualenv

  desc "Tool that helps organize and simplify helper commands using YAML configuration"
  homepage "http://docs.makim.org/"
  url "https://github.com/makim-org/makim/releases/download/1.27.0/makim-1.27.0-py3-none-any.whl"
  sha256 "df7f26d262ec7f4abc668584b055410c47eb737677a8eb1bfb21a3c1b48149d3"
  license "BSD-3-Clause"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "libffi"
  depends_on "openssl@3"
  depends_on "gcc" => :build
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"makim", "--version"
  end
end
