class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.0/garmin-v1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7a4ead6cc22687831c5605e8ecf7879c9f834b4c0e0990a6488fbd8118ca594"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.0/garmin-v1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.9.0/garmin-v1.9.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f1328cd9b6260692b28e64446f0f8819ab697c08f8007ce9d8f2252934a4ae2a"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
