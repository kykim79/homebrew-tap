cask "cursorhighlight" do
  version "0.2.3"
  sha256 "c328365ff088137d13e9da5a2919b3faa4c2100ba2cb4f01b824ad7558e31462"

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
