cask "squint" do
  version "0.9.5"
  sha256 "f67c89b6d9eb90f1cfbe2160138dc4d7d56167061020f23da1062ce7d0a94e98"

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
