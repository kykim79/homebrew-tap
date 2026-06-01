cask "cluxo" do
  version "1.2.4"
  sha256 "4a21d5a527a914408638fad29f03838ca144d40ee305dfa5c747675afa36d1ae"

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
