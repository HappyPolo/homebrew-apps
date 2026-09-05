cask "openworker" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "796eb873f76d3e23b1532335a25417685c28cb2e667565d06176af96c9e58aaf",
         intel: "c6bef93aa789cd609f56418e65a958c3291db5f6e716cb7b4fdb630e099feb10"

  url "https://github.com/andrewyng/openworker/releases/download/v#{version}/OpenWorker#{(arch == "arm64") ? "-macos-arm64" : "_#{version}_x86_64"}.dmg"
  name "OpenWorker"
  desc "Desktop client for running OpenWorker tasks"
  homepage "https://github.com/andrewyng/openworker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "OpenWorker.app"

  zap trash: [
    "~/Library/Application Support/com.openworker.desktop",
    "~/Library/Caches/com.openworker.desktop",
    "~/Library/Preferences/com.openworker.desktop.plist",
    "~/Library/Saved Application State/com.openworker.desktop.savedState",
  ]
end
