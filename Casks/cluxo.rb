cask "cluxo" do
  version "1.2.5"
  sha256 "d52239f1d79eb9ba4eb12842d318c5e62e9455f531d72cbeec4f1afbb038d469"

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
