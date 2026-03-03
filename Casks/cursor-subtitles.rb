 cask "cursor-subtitles" do
    version "1.0.0"
    sha256 "0d75741bfa399068da98801bf771c87ad4ea7c3802c09496d473e06f3eff0997"

    url "https://github.com/shub-rajput/cursor_subtitles/releases/download/v#{version}/CursorSubtitles_v#{version}.zip"
    name "CursorSubtitles"
    desc "Real-time on-screen subtitles that follow your cursor"
    homepage "https://github.com/shub-rajput/cursor_subtitles"

    app "CursorSubtitles.app"

    zap trash: "~/.config/cursor-subtitles"
  end
