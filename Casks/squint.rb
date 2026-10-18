cask "squint" do
  version "0.9.2"
  sha256 "210201e14ee9926b2e8d8a83d69ce58ae0649a721a0cf64aa6d76a99b7f6af6e"

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
