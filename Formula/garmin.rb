class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.10.1/garmin-v1.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "8559c7432bc640f0fd345d0fadb33783b707d2e481ce827fcd8c097fb884b3f8"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.10.1/garmin-v1.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "9487e84562c9ae61bfe2f8ae14def790caa2a8854a2a99ee84b8f53a997588c4"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.10.1/garmin-v1.10.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6b3d545d4ff053d9fb748330ccba40f85ec584ca15df4ef6711b732c71d644f3"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
