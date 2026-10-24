class Ascelerate < Formula
  desc "A Swift CLI for App Store Connect"
  homepage "https://github.com/keremerkan/ascelerate"
  url "https://github.com/keremerkan/ascelerate/releases/download/v0.26.4/ascelerate-macos-arm64.tar.gz"
  sha256 "c6ad4dcef224e1f487dd76e5c70b0a9c71d5625503e34ffbb545f4b1373ae02e"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "ascelerate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascelerate version")
  end
end
