cask "cursorhighlight" do
  version "0.2.1"
  sha256 "5468454ddf40183f9f71a7067b660a111d16a349386a2ae7301a1a41d8ebd4c7"

  url "https://github.com/kykim79/CursorHighlight/releases/download/v#{version}/CursorHighlight.zip",
      verified: "github.com/kykim79/CursorHighlight/"
  name "CursorHighlight"
  desc "Menu bar app for visually highlighting the mouse cursor"
  homepage "https://github.com/kykim79/CursorHighlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "CursorHighlight.app"

  zap trash: [
    "~/Library/Preferences/com.ktoy.CursorHighlight.plist",
  ]
end
