class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.2.0/asc-client-macos-arm64.tar.gz"
      sha256 "6391982f9a7714328496cb97010176756accfe8d0628abb7f67465de6ec85b4a"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client --version")
  end
end
