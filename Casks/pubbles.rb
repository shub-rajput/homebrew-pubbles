  cask "pubbles" do
    version "1.0.4"
    sha256 "bf910c8c4f5b5d83c2715465422a19f3a8b957ca7959c72353719981cc5df1c7"

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
