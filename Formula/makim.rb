class Makim < Formula
  desc "A tool that helps organize and simplify helper commands using YAML configuration"
  homepage "https://github.com/osl-incubator/makim"
  version "1.2.3"
  license "BSD-3-Clause"

  on_macos do
    # on_arm do
    #   url "https://github.com/osl-incubator/makim/releases/download/v1.2.3/makim-darwin-arm64"
    #   sha256 "${ARM64_SHA256}"

    # end

    on_intel do
      url "https://github.com/makim-org/makim/releases/download/v#{version}/makim-linux-x86-64"
      sha256 "${AMD64_SHA256}"
    end
  end

  def install
    bin.install Dir["makim-linux-*"].first => "makim"
  end

  test do
    output = shell_output("#{bin}/makim --version")
    assert_match "Version: #{version}", output
  end
end
