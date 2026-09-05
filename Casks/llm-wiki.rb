cask "llm-wiki" do
  version "0.6.11"
  sha256 "9f30b33f82092c17ba613e1592aa880c134712a14f0812abd101620da243e5df"

  url "https://github.com/nashsu/llm_wiki/releases/download/v#{version}/LLM.Wiki_#{version}_aarch64.dmg"
  name "LLM Wiki"
  desc "Desktop knowledge base for large language models"
  homepage "https://github.com/nashsu/llm_wiki"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "LLM Wiki.app"

  zap trash: [
    "~/Library/Application Support/com.llmwiki.app",
    "~/Library/Caches/com.llmwiki.app",
    "~/Library/Preferences/com.llmwiki.app.plist",
    "~/Library/Saved Application State/com.llmwiki.app.savedState",
  ]
end
