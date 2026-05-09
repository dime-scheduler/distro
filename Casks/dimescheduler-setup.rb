cask "dimescheduler-setup" do
  version "0.11.6"
  sha256 "4443ec567758a8603a58752ef2d4c0ba2121a810f77289240f762636a7e1cee3"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/Dime.Scheduler%20Setup%20Package%20Builder_0.11.6_universal.dmg"
  name "Dime.Scheduler Setup Package Builder"
  desc "Desktop application for building Dime.Scheduler setup packages"
  homepage "https://www.dimescheduler.com"

  livecheck do
    url "https://github.com/dime-scheduler/distro/releases"
    regex(/^setup-packages-v(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  app "Dime.Scheduler Setup Package Builder.app"

  zap trash: [
    "~/Library/Application Support/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Caches/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Preferences/com.dimesoftware.dimescheduler.setup-package-builder.plist",
    "~/Library/Saved Application State/com.dimesoftware.dimescheduler.setup-package-builder.savedState",
  ]
end
