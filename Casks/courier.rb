# Homebrew cask template. The release workflow fills in the version and checksum placeholders and
# pushes the result to https://github.com/ranefattesingh/homebrew-tap as Casks/courier.rb.
#
# Install:  brew install --cask ranefattesingh/tap/courier
cask "courier" do
  version "1.0.1"
  sha256 "c2df0e5144e0a569b62b02e61625faa8414b9b6303cea380f717acd0ef15cebc"

  url "https://github.com/ranefattesingh/courier/releases/download/v#{version}/courier-macos-universal.zip"
  name "Courier"
  desc "Desktop API client for HTTP, GraphQL, gRPC, WebSocket, MQTT, Kafka and more"
  homepage "https://github.com/ranefattesingh/courier"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Courier.app"

  zap trash: [
    "~/Library/Application Support/io.github.ranefattesingh.courier",
    "~/Library/Containers/io.github.ranefattesingh.courier",
    "~/Library/Preferences/io.github.ranefattesingh.courier.plist",
    "~/Library/Saved Application State/io.github.ranefattesingh.courier.savedState",
  ]
end
