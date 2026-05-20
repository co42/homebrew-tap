class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v3.3.0/garmin-v3.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d86904bb82ba7a10088a38bcbf94f3bec7a82484a4af03569bc4c4585a36d4d"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v3.3.0/garmin-v3.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d61d52dbcedb5ef2f691181293c16bb3e2089a4a298722c4e793e8f96dc2d767"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v3.3.0/garmin-v3.3.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1dda08336f5282955b145b1c770ebbfb6233cc59cc595e3995ea094732bcaf45"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
