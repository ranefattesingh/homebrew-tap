# Homebrew cask template. The release workflow fills in 1.0.0 and 56543a1d2f296c8c1e45bc7f2e157f4aabbfd4cd876d8195e6773df1f24d55b4 and
# pushes the result to https://github.com/ranefattesingh/homebrew-tap as Casks/courier.rb.
#
# Install:  brew install --cask ranefattesingh/tap/courier
cask "courier" do
  version "1.0.0"
  sha256 "56543a1d2f296c8c1e45bc7f2e157f4aabbfd4cd876d8195e6773df1f24d55b4"

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
