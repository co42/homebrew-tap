class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.12.0/garmin-v1.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7a08e9055d80fdf14aa7e849fa4cb9154056a175ae343febfead0e46a98382b"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.12.0/garmin-v1.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "ba04249e0f06da437b0aeaff6cb8355b055bc268cd9f22946ff2208942c748bc"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.12.0/garmin-v1.12.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5fda6fc40c39fce4c4151467b8f15b998510eb078f2d58a6f2c097ce336b3662"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
