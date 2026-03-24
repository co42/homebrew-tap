class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.0/garmin-v1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "483c71a706f0dc82c6fd98ef67eefbf1ee591040d37dd229a735a53980937fa0"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.0/garmin-v1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f8f270e07305a3d107bf88403ec1aca36b127fd05d8bb8c275439f263269c3d"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.7.0/garmin-v1.7.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "bdbe4aa0ad175f46a93a35c02813e25e84efc34cad148cf0027334db6614338f"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
