class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.24.0"
  license "MIT"

  depends_on macos: :sequoia

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.24.0/ascelerate-macos-arm64.tar.gz"
      sha256 "4cd405b2ed679ecc9980cea31730c32e94d4c0258946f960e923cd52ee056c04"
    end
  end

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
