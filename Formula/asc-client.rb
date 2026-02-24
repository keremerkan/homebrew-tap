class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.3.1/asc-client-macos-arm64.tar.gz"
      sha256 "d66c4917bd756a0f6d0f1944f7f5bff4f39043c2c30744c0742df23b726fd085"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client --version")
  end
end
