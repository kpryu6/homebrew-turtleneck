cask "turtleneck" do
  version "1.1.0"
  sha256 "02789a77f546a95947af03fca96ddba0bd0c2a047f855bc556afedd6a4096262"

  url "https://github.com/kpryu6/turtleneck/releases/download/v#{version}/TurtleNeck-#{version}.dmg"
  name "TurtleNeck"
  desc "Posture guardian that detects slouching via webcam and sends sassy turtle alerts"
  homepage "https://github.com/kpryu6/turtleneck"

  depends_on macos: ">= :ventura"

  app "TurtleNeck.app"

  zap trash: [
    "~/Library/Preferences/com.turtleneck.app.plist",
    "~/Library/Application Support/TurtleNeck",
  ]
end
