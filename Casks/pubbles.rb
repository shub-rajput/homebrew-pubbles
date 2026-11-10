  cask "pubbles" do
    version "1.4.0"
    sha256 "67dc2ea8c84828e9050bfe71b26e0b4a403ff7274c3953e64b65ddd13e699010"

    url "https://github.com/shub-rajput/pubbles/releases/download/v#{version}/Pubbles_v#{version}.zip"
    name "Pubbles"
    desc "Subtitle bubbles for your pointer"
    homepage "https://github.com/shub-rajput/pubbles"

    app "Pubbles.app"

    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-cr", "#{appdir}/Pubbles.app"]
    end

    zap trash: "~/.config/pubbles"
  end
