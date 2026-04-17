class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.13.0/garmin-v1.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "2154ae574ef304908ba88848a3e93ceabad73a753f097d91987c82921da7f9b3"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.13.0/garmin-v1.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "77b40f50cad4b2bf99dcfb222aa6b2f92d8515b0eaf7d8479d7acc638c3a4666"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.13.0/garmin-v1.13.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "28531cb22857d27d59118ef37b369efa00d6b15aea95e841892f724060288d99"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
