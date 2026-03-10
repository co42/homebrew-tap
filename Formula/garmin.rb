class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.2.0/garmin-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc1ea2ad04dc40e172f9d5af00e3e9c99027067f25e5f90ef32bfe4da02ea715"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.2.0/garmin-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b2e606b96a04887d04af6bb147ca4f0fbf8dd7b24513755c6346f0d365767cd"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.2.0/garmin-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e5631d23b001c90a833fd75eadbdf2d81af3bb62dbd57d95ce50e472ce3887db"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
