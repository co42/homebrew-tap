class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.1/garmin-v1.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "0a2f3793d2f2a38397b88ed0fee38fd5f58ba0f3779153930de66e8c5879385b"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.1/garmin-v1.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a0a703f8cb9f638caefa584720a71609b657a671698b6797cc73a596e4c5894"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.7.1/garmin-v1.7.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b0bf87c623c7a5ad6207e1f3a76eaeda0fc1c853f98ca2132f66a128e24ad231"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
