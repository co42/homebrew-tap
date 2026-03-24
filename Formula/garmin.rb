class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.2/garmin-v1.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "a439836498ff3208a94f9c3179d2a8a7a7b0affd2884add6d451a13dd54feb77"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.7.2/garmin-v1.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "11a838d94fd388f81993876bed219c773a031bae1f0ec6e936b6acfc38acfc58"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.7.2/garmin-v1.7.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "934f689db3e26019e72a3a857aad4c8b31fa4bacf399a936dfa0938aa07353fd"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
