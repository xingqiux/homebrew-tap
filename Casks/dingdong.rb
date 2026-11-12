cask "dingdong" do
  version "1.1.1"
  sha256 "1ca0133ef9e9b0fb43bc15d48f95b665aafcf74e1a081a9a310dca935bb2e7a6"

  url "https://github.com/xingqiux/dingdong/releases/download/v#{version}/Dingdong-v#{version}.zip"
  name "Dingdong"
  name "叮咚"
  desc "Cute menu bar notifier that lets AI agents ping you with one HTTP call"
  homepage "https://github.com/xingqiux/dingdong"

  depends_on macos: ">= :sonoma"

  app "Dingdong.app"

  uninstall quit: "local.dingdong.menubar"

  zap trash: "~/Library/Preferences/local.dingdong.menubar.plist"

  caveats <<~EOS
    叮咚没有经过 Apple 公证。第一次打开如果被拦，运行：
      xattr -dr com.apple.quarantine "#{appdir}/Dingdong.app"
  EOS
end
