class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.5.5/asc-client-macos-arm64.tar.gz"
      sha256 "04a1f84a7e776464117d4036483b983e4310e51405b1fee97b0f5debf1c45c9b"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client 2>&1")
  end
end
