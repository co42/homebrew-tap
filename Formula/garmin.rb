class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v2.0.0/garmin-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7b4a36d883b9aad0768f45c91ebae385111d2a970bee76ae11fd8f11f710f1a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v2.0.0/garmin-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1ced43354dd2f541a8bf1dbd2efdba285fcc8e0e25cbc89bc0726c60695b391"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v2.0.0/garmin-v2.0.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6955551ce2e80e33eb90e859afc5775f893dfa3d7b60cdab720cc3e47e02762d"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
