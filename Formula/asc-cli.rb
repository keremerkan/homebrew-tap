class AscCli < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/asc-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-cli/releases/download/v0.7.0/asc-macos-arm64.tar.gz"
      sha256 "aed859a9f215512d941436adfc43b43e7967556f864367425e34005f3ad57632"
    end
  end

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
