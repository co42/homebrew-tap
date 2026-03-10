class Sncf < Formula
  desc "SNCF train schedule CLI"
  homepage "https://github.com/co42/sncf"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "placeholder"
  end

  def install
    bin.install "sncf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sncf --version")
  end
end
