class AscClient < Formula
  desc "Renamed to 'ascelerate' — run: brew install ascelerate"
  homepage "https://github.com/keremerkan/asc-cli"
  url "https://github.com/keremerkan/asc-cli/releases/download/v0.7.0/asc-macos-arm64.tar.gz"
  sha256 "aed859a9f215512d941436adfc43b43e7967556f864367425e34005f3ad57632"
  license "MIT"

  deprecate! date: "2026-03-14", because: "has been renamed to ascelerate", replacement_formula: "ascelerate"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "asc"
  end

  test do
    assert_match "asc #{version}", shell_output("#{bin}/asc 2>&1")
  end
end
