class Makim < Formula
  include Language::Python::Virtualenv

  desc "Tool that helps organize and simplify helper commands using YAML configuration"
  homepage "http://docs.makim.org/"
  url "https://github.com/makim-org/makim/archive/refs/tags/1.27.0.tar.gz"
  sha256 "1149ca58edec452f563b28cfe3918e4486ad6b9b2137e64003213cc6cef91050"
  license "BSD-3-Clause"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"makim", "--version"
  end
end
