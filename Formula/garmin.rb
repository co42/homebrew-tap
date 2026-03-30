class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.8.0/garmin-v1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "a6bc652d118f402e54de849af4759d363a4c0999fef663cb0ccdd917e311770e"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.8.0/garmin-v1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a2bb699997f4a333136210e7952bb95e4281a4481c6b2fb47449618c9db277c"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.8.0/garmin-v1.8.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fbcf02e551dc177bc63cec502bda3f67aa4257f7063ddf30f91d2cec45079c97"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
