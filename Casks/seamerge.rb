cask "seamerge" do
  version "0.7.0"
  sha256 "30b14fbdcd3215313e8a47b2e38e8477ddc340f8ef154fcafb1f327d51f12552"

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
