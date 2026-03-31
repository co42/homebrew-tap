class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.8.1/garmin-v1.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "b65a9b77ebc16c1f8dbe4f5853e71a20afd9dbe73f7d97c774c7bed8216bcd09"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.8.1/garmin-v1.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "7f9bc37f75eeffe0c4db5a4c44ad678349a4bb2279dd30cc542d6f9fb5954203"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.8.1/garmin-v1.8.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2e4addb78f398911def66885af9f76cd27bf47e25fdcaba22895cd687400224d"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
