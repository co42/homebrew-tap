class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.0/garmin-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8791605b5047d64aa79eee7c6baab1a7651f5c8ea618e8277215d4393efb52d5"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.3.0/garmin-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "61a25023bf6504342065675da251a3d7f1da3dcf8508e1fb886338db96292bf7"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.3.0/garmin-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "580381a2b1f8d54938d4bc2da05b5b763ca2c41e6c1332dbe7a13b4276e1cfe1"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
