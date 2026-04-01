class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.1/garmin-v1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "4cdf266627b461adb0d3b63b05fa4aee28db5c69a22074d4c350b073cb8c2024"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.1/garmin-v1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "032ea5c223f161c32d22df3fa064bfb7855d9821948ef357d2edc039e36597dc"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.9.1/garmin-v1.9.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8f8cc50f32361aa4b8ae301c9c78c22fd8b07bbf8ae836d07e84a307c691d39b"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
