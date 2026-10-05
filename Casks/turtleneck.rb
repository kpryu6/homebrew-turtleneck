cask "turtleneck" do
  version "1.3.0"
  sha256 "953908910cd05f6636089b76b097ba35a8d30c62075b6034674c9bda39ab0913"

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
