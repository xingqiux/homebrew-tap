cask "dingdong" do
  version "1.1.0"
  sha256 "01feed1d85f74591f8f109d59f1a4bdc8a63aeb4fe8d3fd78d556dfbef70cb28"

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
