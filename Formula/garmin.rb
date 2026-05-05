class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v3.2.0/garmin-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d037c3f8a35efb492bedf8168dfaba4c0563f8691724e91a3fbc0ea9d8c28237"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v3.2.0/garmin-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b9c9a15c05745381a3e754431227c5de24ffe433b4cec7cf7160ee3b9da3e80"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v3.2.0/garmin-v3.2.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a3ae6fb34b9a24ff31e3546e42d02f6f59adc24dbf2a6f62d1cd47df2b1292b5"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
