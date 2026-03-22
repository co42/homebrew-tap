class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.3/garmin-v1.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "114b98cf5f120905349dc4cae44eff5886087a3a6b01a5328471344495f4097a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.3/garmin-v1.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "8d2ca5826fc87972487de137f61d2a8c18bc94f2d953e437ccd620c443bdbf6f"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.3.3/garmin-v1.3.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a7baefc25fa0a8ad641347b6a77f64325c584c141aadcf79b9c7f3c53953f7c6"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
