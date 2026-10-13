cask "squint" do
  version "0.9.1"
  sha256 "1d0a05128f001b99a47dfe9500952124f29dd8982187cc3574357e4c465acf50"

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
