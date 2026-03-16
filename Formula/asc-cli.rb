class AscCli < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/asc-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-cli/releases/download/v0.7.1/asc-macos-arm64.tar.gz"
      sha256 "a18624930eb8a2427ca43efc9af1a77940486e2e85a4d26ad40d79ad15d9b93f"
    end
  end

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
