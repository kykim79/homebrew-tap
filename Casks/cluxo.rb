cask "cluxo" do
  version "1.2.9"
  sha256 "79307b657338a91485b2be9c267e0a545d433b37316583c9f423e42c9e9c49fc"

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
