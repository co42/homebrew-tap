class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.11.0/garmin-v1.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "3548dc65e9fe0e50f1e5c72c4a836f38acceeb9dbc6283a57977cd5087b3bc5e"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.11.0/garmin-v1.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a63a5cb3ee180c6e4b464ec3fc7dc97ca882f27925822e3a9135e89a175f749"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.11.0/garmin-v1.11.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a6144cd89ee964dcecd0ea4ad92b87d22c1817f6cc0793deecea22127b012c0f"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
