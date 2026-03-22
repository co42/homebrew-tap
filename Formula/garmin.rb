class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.1/garmin-v1.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "0162ec8406335c62967779ab2b8d48eaa864b08891d6cf0f8e5facf9246d2769"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.1/garmin-v1.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a846ce8f4d6ccb9ee7c0959ebe43a06a5b8b45d4daac7a01646a44a37139ac1"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.5.1/garmin-v1.5.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a3adbe6d97675c08babc6eb0520324577e99d2b3753e611d2d53c1ed8fcd4519"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
