class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "661f5100db76e86cba03e637817e6dce0eb29d17d7aa3ad080eb7b6609c2787a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2bd969feefc1f9d92a54a7fab9fea2c7c211ebbfd37946f4291ff9691c8790db"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.6.0/garmin-v1.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "54f9a17050e90beecd2c2fd9d2d5540e60aa695038f479d3aad765e8b0ea308d"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
