cask "voicetype" do
  version "1.2"
  sha256 "09964020653487fcbab3b42993e9ece2bdb683706a6c9e1cc719ba9625f2027e"

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
