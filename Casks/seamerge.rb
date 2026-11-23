cask "seamerge" do
  version "0.8.1"
  sha256 "6eb4997ef6bd060dfb46035a18a9bc03dec99ffcee93a73f34730a8649ce9319"

  url "https://github.com/cykedev/seamerge/releases/download/v#{version}/Seamerge-#{version}.zip"
  name "Seamerge"
  desc "Diff and merge tool built for Git"
  homepage "https://www.seamerge.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Seamerge.app"
  binary "#{appdir}/Seamerge.app/Contents/Helpers/seamerge"

  zap trash: [
    "~/Library/Application Support/Seamerge",
    "~/Library/Caches/app.eiden.seamerge",
    "~/Library/Caches/Seamerge",
    "~/Library/HTTPStorages/app.eiden.seamerge",
    "~/Library/Preferences/app.eiden.seamerge.plist",
  ]
end
