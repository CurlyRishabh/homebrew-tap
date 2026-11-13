cask "voicetype" do
  version "1.0"
  sha256 "de855c79c9ed0855c3246fc160e2e883170b23ce49188ec591bd652f23636955"

  url "https://github.com/CurlyRishabh/VoiceType/releases/download/v#{version}/VoiceType.dmg"
  name "VoiceType"
  desc "Private, offline voice typing (English, Hindi, Hinglish)"
  homepage "https://github.com/CurlyRishabh/VoiceType"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "VoiceType.app"

  uninstall quit: "dev.offline.voicetype.mac"
  zap trash: "~/Library/Containers/dev.offline.voicetype.mac"

  caveats <<~EOS
    First launch: if macOS blocks it, go to
      System Settings > Privacy & Security > Open Anyway
    Speech models (one time, ~660 MB):
      https://github.com/CurlyRishabh/VoiceType/releases/latest/download/VoiceTypeModels.zip
    Unzip, then VoiceType > Models > Import models folder.
  EOS
end
