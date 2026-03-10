class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.1.0/garmin-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cfbb7c7e53b84a8ffe0fc691e43de55e6c4fa59fc9f0b8b8e3b95f9c5aaafd6f"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.1.0/garmin-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0bc50382ca6e195a0d34c7f6daa9212915061568663e919dbaf5a5a9235b1e82"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.1.0/garmin-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d065ff35cdff1c0d1ee8b4dde8b15896684af3c94bcecf775351c31852737aa"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
