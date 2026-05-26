cask "cursorhighlight" do
  version "0.4.3"
  sha256 "516d29f549ab864a89018a36a153a8a471efb41201f37cf9eb2230ebdde4b33c"

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
