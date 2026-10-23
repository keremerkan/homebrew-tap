class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.26.3"
  license "MIT"

  depends_on macos: :sequoia

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.26.3/ascelerate-macos-arm64.tar.gz"
      sha256 "5b7e425ed5466a75b833b2d8bd70b43137a69d8c066c50445bbdc809cca50b25"
    end
  end

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
