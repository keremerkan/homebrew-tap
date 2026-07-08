class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.14.0/ascelerate-macos-arm64.tar.gz"
      sha256 "528207bb34872291a5c393c4330eb90fa2133ced375c9ffc281fb52b673699de"
    end
  end

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
