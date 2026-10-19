cask "squint" do
  version "0.9.3"
  sha256 "bb2c50b6d199964adcf56efa7d18e88968f26ca84f36c07ac1e0d5a38eddf6da"

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
