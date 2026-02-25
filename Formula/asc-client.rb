class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.4.0/asc-client-macos-arm64.tar.gz"
      sha256 "64ff15c459385c178ae1d67a6e5cc5fecee78f846fa2dca1039eabf6410f12ef"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client 2>&1")
  end
end
