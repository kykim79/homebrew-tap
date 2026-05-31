cask "cluxo" do
  version "1.2.1"
  sha256 "db4a7adafb4f869550cd1f43a0edcf4c1236ea619ec0555ec41d9fe67ff4c670"

  url "https://github.com/kykim79/Cluxo/releases/download/v#{version}/Cluxo.zip",
      verified: "github.com/kykim79/Cluxo/"
  name "Cluxo"
  desc "Menu bar app for visually highlighting the mouse cursor"
  homepage "https://github.com/kykim79/Cluxo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Cluxo.app"

  zap trash: [
    "~/Library/Preferences/com.ktoy.Cluxo.plist",
  ]
end
