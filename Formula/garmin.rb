class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.11.1/garmin-v1.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "d666e54fc5add6811e11da7c25ca34a8f0953bcd3b82a5d899e0e9a4cc091cd1"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.11.1/garmin-v1.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "3be1098e8c9df25311301aed7ea9f32c8b13c3cc12172d31491242721e322ccb"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.11.1/garmin-v1.11.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "05dcf6d353c0f3cb4e77cb25c590bde4e5d2ead473021937f8e5ea29c7fe3335"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
