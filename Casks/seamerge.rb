cask "seamerge" do
  version "0.10.0"
  sha256 "364d78b474a9032f660c256eb7522799c9292895917636db4489c4c034254f6b"

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
