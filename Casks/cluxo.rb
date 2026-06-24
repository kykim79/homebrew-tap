cask "cluxo" do
  version "1.3.0"
  sha256 "b7f740e04a1f1eb2ff708d3645075f22df0a24c236fa59e9d979b66e62162ec6"

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
