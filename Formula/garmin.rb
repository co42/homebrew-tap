class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.3/garmin-v1.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "ab9d02e33b8031d12d7acbb14bd73678f41c2836323df53165df47ccf72a7e66"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.3/garmin-v1.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "8ad9332bb7e32b205b27411f11f4c577e3add03ac3ec7cc9dcf362082e5bc4f0"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.7.3/garmin-v1.7.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "213467cbc3adf76e329f6217b26f4482b3520074bd2c59ad1a6ec524e28c9dc2"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
