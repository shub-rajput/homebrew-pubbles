  cask "cursor-subtitles" do
    version "1.0.2"
    sha256 "826cc4099ffe9281aa3b901200251ea3aace26f7a882b9bfe11b754182c0ec84"

    url "https://github.com/shub-rajput/cursor_subtitles/releases/download/v#{version}/CursorSubtitles_v#{version}.zip"
    name "CursorSubtitles"
    desc "Real-time on-screen subtitles that follow your cursor"
    homepage "https://github.com/shub-rajput/cursor_subtitles"

    app "CursorSubtitles.app"

    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-cr", "#{appdir}/CursorSubtitles.app"]
    end

    zap trash: "~/.config/cursor-subtitles"
  end
