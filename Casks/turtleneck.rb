cask "turtleneck" do
  version "1.2.2"
  sha256 "7054583971db7cdd2c7f0dedf99c1ad8311a1e0e7bf74910491a897aa32f2a37"

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
