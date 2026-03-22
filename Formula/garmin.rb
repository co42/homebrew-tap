class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6fdcf37de7624348c1dcdf9c32b6b0faa51e258d3fc07b67ba0a7f582ff69e4"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "6fa4a9053318070c109acfdaf9c25729523027c7d462d643d08035ce9ef55ea7"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.5.0/garmin-v1.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3a92e63f53e4d99dc3603e826babb6234441f3633aab4bc285a8d12f2d5b1ffb"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
