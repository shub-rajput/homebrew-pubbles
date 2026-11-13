  cask "pubbles" do
    version "1.4.2"
    sha256 "e0f4b85d6c0e6b3ca9bcb3b930ac63e557dc19e0dfe6f125628899ee82f1766f"

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

