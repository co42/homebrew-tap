class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.4.0/garmin-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c81a285556ece21a81ab62684af6d3c0adf1b860269e37a1e737049b848b92c1"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.4.0/garmin-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "02cb50cc2f8264305155f13692a8f2e43896b02b35195259e7b0365d5d65872c"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.4.0/garmin-v1.4.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "82b70f4e7ea9e56dc7d7be84d98eab9c5a8508766156ec3028889cbeb2ac87bd"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
