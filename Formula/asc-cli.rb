class AscCli < Formula
  desc "Renamed to 'ascelerate' — run: brew install keremerkan/tap/ascelerate"
  homepage "https://github.com/keremerkan/ascelerate"
  url "https://github.com/keremerkan/ascelerate/releases/download/v0.7.2/asc-macos-arm64.tar.gz"
  sha256 "7d1c383c7de9e017305690652865d97d8e362cbabc3218b670530268d8db0696"
  license "MIT"

  deprecate! date: "2026-03-18", because: "has been renamed to ascelerate", replacement_formula: "ascelerate"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
