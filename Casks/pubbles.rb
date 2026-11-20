cask "pubbles" do
  version "1.5.0"
  sha256 "ce1da6001bb961709a2ccb9bd1518bd262ce5879d810bbfa38b9a95bc24c6bff"

  url "https://dl.pubbles.app/mac/#{version}/Pubbles_v#{version}.zip"
  name "Pubbles"
  desc "Subtitle bubbles for your pointer"
  homepage "https://pubbles.app"

  app "Pubbles.app"

  zap trash: "~/.config/pubbles"
end
