class Sncf < Formula
  desc "SNCF train schedule CLI"
  homepage "https://github.com/co42/sncf"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec83df33824255cb2a850a8a16330e66dcb817b8e4cc700350b5a6cf0f4186ba"
    else
      url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "08d78fac581dbcc79dfb13e5936c1da78e60c386ab11016edabb84fcc5354d27"
    end
  end

  on_linux do
    url "https://github.com/co42/sncf/releases/download/v1.0.0/sncf-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "53dffbc07f398bd46f345acfb05692d997d8c80c0c093e31574bd3a7df1c443b"
  end

  def install
    bin.install "sncf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sncf --version")
  end
end
