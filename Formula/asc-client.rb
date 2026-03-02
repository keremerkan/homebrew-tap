class AscClient < Formula
  desc "Command-line tool for the App Store Connect API"
  homepage "https://github.com/keremerkan/asc-client"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-client/releases/download/v0.5.4/asc-client-macos-arm64.tar.gz"
      sha256 "4ff68e24b21bb345a805b46b0dc85aae6f81ecf06dcddc1bcc1f87d43e016062"
    end
  end

  def install
    bin.install "asc-client"
  end

  test do
    assert_match "asc-client #{version}", shell_output("#{bin}/asc-client 2>&1")
  end
end
