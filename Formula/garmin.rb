class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.0.0/garmin-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f73e16bf7e81e2fd0b056e9479468baa99b889d4c8f095b134afbb33bc7ce4a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.0.0/garmin-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8008ab1cbbba2f2716843230f08cb1276edb43b584672b8f79550eefc5ecbf9"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.0.0/garmin-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b32b8626ded72bbd74e9c9338ec0d6a7ec997dfb5aecfb10d867432d4ddfa690"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
