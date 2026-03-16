class AscCli < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/asc-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/asc-cli/releases/download/v0.7.1/asc-macos-arm64.tar.gz"
      sha256 "b15434ffd56867fedd0e344d9a88f455bd0a5513867fa2d394e387dbc05d4bbd"
    end
  end

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
