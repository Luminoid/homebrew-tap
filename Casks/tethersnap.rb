cask "tethersnap" do
  version "0.2.0"
  sha256 "05aeee76c35ad702846b4809f0719999a8dcf1bfa5ec031479aa1c3af685f5f3"

  url "https://github.com/Luminoid/Tethersnap/releases/download/#{version}/Tethersnap-#{version}.dmg"
  name "Tethersnap"
  desc "Export Nintendo Switch 2 screenshots and videos over USB"
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
