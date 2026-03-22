class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd81236f22b504b9bb5dd8ea38ba94ef085d67bb95171f4e31b666e1b3961bcc"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "a7a12228bf7e4141435fbab466debce9938522c2508859fe643daa463cbe1654"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "afa2e820177aeb20b29e791868a47e714cd46ddaffa162915d774b74685a15bb"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
