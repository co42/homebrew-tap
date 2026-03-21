class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.1/garmin-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "6455f72ffd425294cf9fa5afbbdfa3454b44f6651bfe6699a7c61c9e3bde173c"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.1/garmin-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "81494bc9c3f9b191b06b7bc164dad089935a5d9d816fc230ecfecdc8ec89cf2a"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.3.1/garmin-v1.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fbd2ba95246379f1f5985f37f6e4ba5c3474fcd0d5299c63489da7bb82190687"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
