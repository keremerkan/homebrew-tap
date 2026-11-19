cask "claudemon" do
  version "1.5.0"
  sha256 "80598f1fcb0f170eae0e31da1da30ac48b6391476cda31253d652a13ffadfb06"

  url "https://github.com/keremerkan/claudemon/releases/download/v#{version}/Claudemon.dmg"
  name "Claudemon"
  desc "Menu-bar app showing live Claude Code usage limits"
  homepage "https://github.com/keremerkan/claudemon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Claudemon.app"

  zap trash: [
    "~/Library/Caches/com.claudemon.app",
    "~/Library/Group Containers/3QKMW9HR59.group.com.claudemon.app",
    "~/Library/Group Containers/GH4CGS3B5H.group.com.claudemon.app",
    "~/Library/Group Containers/group.com.claudemon.app",
    "~/Library/HTTPStorages/com.claudemon.app",
    "~/Library/Preferences/com.claudemon.app.plist",
  ]
end
