cask "squint" do
  version "0.9.6"
  sha256 "3dcffa0c3b19f0c0445ad6c517e70a0607a0ea86f9cd8946eda7c14c23b5d1b6"

  url "https://github.com/mdws-org/squint/releases/download/v#{version}/Squint-#{version}.dmg"
  name "Squint"
  desc "Image optimizer that targets perceived quality and keeps the colour profile"
  homepage "https://github.com/mdws-org/squint"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Squint.app"

  zap trash: [
    "~/Library/Application Support/Squint",
    "~/Library/Caches/net.mdws.squint",
    "~/Library/HTTPStorages/net.mdws.squint",
    "~/Library/Preferences/net.mdws.squint.plist",
  ]
end
