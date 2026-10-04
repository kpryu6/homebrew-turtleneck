cask "turtleneck" do
  version "1.2.0"
  sha256 "b8e7ad9da69853a38f7e880f78f948401a0f84951af4d1eaa799ba62aed1cf78"

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
