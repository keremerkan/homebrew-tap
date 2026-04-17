class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.9.3/ascelerate-macos-arm64.tar.gz"
      sha256 "bf730a0cf0b01fccdc37b4bfac4a5be7acbbf8bd28482205ae026f1320187add"
    end
  end

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
