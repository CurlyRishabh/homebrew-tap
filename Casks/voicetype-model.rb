cask "voicetype-model" do
  version "large-v3-turbo-q5_0"
  sha256 "394221709cd5ad1f40c46e6031ca61bce88931e6e088c188294c6d5a55ffa7e2"

  url "https://github.com/CurlyRishabh/VoiceType/releases/download/models-v1/ggml-large-v3-turbo-q5_0.bin"
  name "VoiceType speech model"
  desc "Whisper large-v3-turbo model for VoiceType (runs on-device)"
  homepage "https://github.com/CurlyRishabh/VoiceType"

  depends_on arch: :arm64

  artifact "ggml-large-v3-turbo-q5_0.bin",
           target: "~/Library/Application Support/VoiceType/Models/whisper/ggml-large-v3-turbo-q5_0.bin"
end
