class Sncf < Formula
  desc "SNCF train schedule CLI"
  homepage "https://github.com/co42/sncf"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/sncf/releases/download/v1.1.0/sncf-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "247d0058922b95ba75a6aa4a480e57445838cb08eb67106873578b8e9d3c310c"
    else
      url "https://github.com/co42/sncf/releases/download/v1.1.0/sncf-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbda9161cf7f0120c4c20d97b3e69663f829d34ebef1980749c9862036ebd5cc"
    end
  end

  on_linux do
    url "https://github.com/co42/sncf/releases/download/v1.1.0/sncf-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9a12a8cf9473aad278053d12e31930e26a6e4f5471c5710fc27278c2c6b3ece3"
  end

  def install
    bin.install "sncf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sncf --version")
  end
end
