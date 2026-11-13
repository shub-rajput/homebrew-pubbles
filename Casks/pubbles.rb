  cask "pubbles" do
    version "1.4.1"
    sha256 "30254de59a16b24ceb2efd1c56fea85d902bfeb2a1eefa15453c25fa5302e503"

    url "https://dl.pubbles.app/mac/#{version}/Pubbles_v#{version}.zip"
    name "Pubbles"
    desc "Subtitle bubbles for your pointer"
    homepage "https://pubbles.app"

    app "Pubbles.app"

    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-cr", "#{appdir}/Pubbles.app"]
    end

    zap trash: "~/.config/pubbles"
  end
