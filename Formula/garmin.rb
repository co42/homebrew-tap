class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.3/garmin-v1.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "f89a962eb93752930640a8089e595f6b931cf393860762a0b94de74cf311541a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.3/garmin-v1.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "09734be3383da626925df097cb01c84ef4f5cb7279361ba750795708ea539fe7"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.9.3/garmin-v1.9.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e7ed335f0f2f4b3c68bd8766088ff995cdee0ae1b5629a20d8df158cda5007d2"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
