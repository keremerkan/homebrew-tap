class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.1.0/asc-client-macos-arm64.tar.gz"
      sha256 "91ed4187f82dd1cce025faee9ae65c4dd48b1c8597832c535c4ee0b63ac6784d"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client --version")
  end
end
