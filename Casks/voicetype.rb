cask "voicetype" do
  version "1.1"
  sha256 "af609b2d377812629c05b9d1dae942b82d8ce93394ed301af6743b54cbe153ae"

  url "https://github.com/CurlyRishabh/VoiceType/releases/download/v#{version}/VoiceType.dmg"
  name "VoiceType"
  desc "Private, offline voice typing (English, Hindi, Hinglish)"
  homepage "https://github.com/CurlyRishabh/VoiceType"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  depends_on cask: "curlyrishabh/tap/voicetype-model"

  app "VoiceType.app"

  uninstall quit: "dev.offline.voicetype.mac"
  zap trash: "~/Library/Containers/dev.offline.voicetype.mac"

  caveats <<~EOS
    First launch: if macOS blocks it, go to
      System Settings > Privacy & Security > Open Anyway
    The speech model (voicetype-model cask) lives in
      ~/Library/Application Support/VoiceType/Models
    and is kept across VoiceType updates.
  EOS
end
