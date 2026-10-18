cask "tethersnap" do
  version "0.3.0"
  sha256 "8021986e464868cc16f3823e8a5eedcee4a74176d88459131a70c32625f96cf3"

  url "https://github.com/Luminoid/Tethersnap/releases/download/#{version}/Tethersnap-#{version}.dmg"
  name "Tethersnap"
  desc "Export photos and videos from game consoles, cameras, and drives"
  homepage "https://github.com/Luminoid/Tethersnap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Tethersnap.app"

  zap trash: [
    "~/Library/Logs/Tethersnap",
    "~/Library/Preferences/dev.luminoid.Tethersnap.plist",
  ]
end
