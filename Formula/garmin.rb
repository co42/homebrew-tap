class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.2/garmin-v1.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "845588fa5912816544cdb664192feb67673907bffc7c4f698955c23b35f94840"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.2/garmin-v1.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "3a919f2a76629c17c99bd6340586435286e828bc7c46698a50a72f3726b7ddf2"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.3.2/garmin-v1.3.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2f166fa42cb076146069f4aed9a3927bf2645f245f92ada732c851cc2c1f5ee1"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
