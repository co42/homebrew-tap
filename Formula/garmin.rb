class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f754994e826f3f06c26d9660de220fc402d5d0079cbb9db507387b04eb519b0d"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "80eae2ed90d9f8786f076720d85d3b0f7064922341d2611b81568f32426dde75"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7d4510296f60cbde7f85b70e2330191c6b04751336716c899db5f817006f16fa"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
