class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.6.1/asc-client-macos-arm64.tar.gz"
      sha256 "6d01f8d561ffafc0dd2c270b9e8557665197327402ff4b1d00291a26fa4317c0"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client 2>&1")
  end
end
