class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.23.0/ascelerate-macos-arm64.tar.gz"
      sha256 "24bda6439f2069dd9d4a57e05ae56e6520d8abbdb41112c6ef335fb6123ffa6d"
    end
  end

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
