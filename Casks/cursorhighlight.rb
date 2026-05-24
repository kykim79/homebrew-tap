cask "cursorhighlight" do
  version "0.4.2"
  sha256 "e200faa4a6bc13060519868c51ca2961beb2f76118863e08e995ba4f00762c3e"

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
