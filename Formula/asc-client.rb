class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.5.3/asc-client-macos-arm64.tar.gz"
      sha256 "26503e7e1a26431721a825ef682d4a99eaaa7eeb12d8f3dd7a393e3230a2cd74"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client 2>&1")
  end
end
