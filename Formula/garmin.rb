class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v3.1.0/garmin-v3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b63d8e269805084046ac96f90987a75286ede9bcf32d1c1a35bebd9af377f73f"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v3.1.0/garmin-v3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b344f76176f5df08b68ec622f2287bd2384ca2e504af04111a10c1763f35dc56"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v3.1.0/garmin-v3.1.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1adc71b1c81145271cf6876fa91d9cff3a64c584cc9be2726635ec8d724105fa"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
