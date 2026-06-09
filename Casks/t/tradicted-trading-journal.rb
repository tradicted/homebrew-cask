cask "tradicted-trading-journal" do
  version "1.0.0"
  sha256 "badd455121d30a21f6aba1bfc987060e541c8a2721e51a6315bcc20afb94645b"

  url "https://github.com/tradicted/tradicted-journal/releases/download/v#{version}/Tradicted.Journal-#{version}.dmg"
  name "Tradicted Trading Journal"
  desc "Free open-source desktop trading journal"
  homepage "https://www.tradicted.com/"

  depends_on macos: :monterey

  app "Tradicted Journal.app"

  zap trash: [
    "~/Library/Application Support/tradicted-trading-journal",
    "~/Library/Preferences/com.tradicted.journal.plist",
    "~/Library/Saved Application State/com.tradicted.journal.savedState",
  ]
end
