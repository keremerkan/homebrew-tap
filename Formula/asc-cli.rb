class AscCli < Formula
  desc "Renamed to 'ascelerate' — run: brew install keremerkan/tap/ascelerate"
  homepage "https://github.com/keremerkan/ascelerate"
  version "0.7.2"
  license "MIT"

  deprecate! date: "2026-03-18", because: :renamed, replacement: "ascelerate"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keremerkan/ascelerate/releases/download/v0.7.2/asc-macos-arm64.tar.gz"
      sha256 "7d1c383c7de9e017305690652865d97d8e362cbabc3218b670530268d8db0696"
    end
  end

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
