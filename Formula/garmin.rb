class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.14.0/garmin-v1.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "3647e2fb7e59a1e5b77f479d4a7026816d95227a2c3e2e23cf20439ca93b3188"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.14.0/garmin-v1.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7ba0de9d35da557acda6209bbe4ff38fd03c34dd6f8db7801b5154f6f283a25"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.14.0/garmin-v1.14.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "761c470227fba950b15bfccebc71faac5f7d3880e2ff02efcec500e0e89cbdb4"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
