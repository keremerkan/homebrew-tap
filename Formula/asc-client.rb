class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.3.0/asc-client-macos-arm64.tar.gz"
      sha256 "d03e1d9e4867db32e90238e8c4889c503efeb57bfc8309e5936f4b65ce8eb847"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client --version")
  end
end
