cask "cursorhighlight" do
  version "0.5.5"
  sha256 "7c078fa0d05ad0a5605f2f486005057ed1a0f0cdd3f9c085c7ca65f70439632c"

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
