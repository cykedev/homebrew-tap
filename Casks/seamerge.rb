cask "seamerge" do
  version "0.4.1"
  sha256 "06466d848533f2941be1d1bdaf216bde7bcfea02eb78d15834a9ca1428466d57"

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
