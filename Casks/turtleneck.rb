cask "turtleneck" do
  version "1.3.1"
  sha256 "73b9f1fb57067d8a57ce7a01f402bc5dbaaa841bf6cdb42e1dba564826e1fec4"

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
