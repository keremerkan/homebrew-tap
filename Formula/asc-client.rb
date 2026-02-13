class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.2.1/asc-client-macos-arm64.tar.gz"
      sha256 "cd77cb3e167d4947b945ec72158e1cac33e41405428477fa8a35e33fc91270f4"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client --version")
  end
end
