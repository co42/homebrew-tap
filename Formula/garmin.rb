class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.10.0/garmin-v1.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2ae7afbc70c70099cbea2b7ea0df42a180cd8eb4b08315e05be983e9cabde50"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.10.0/garmin-v1.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "dbb951b85091fc2de106cd5e4ad11feb225998e3243bf24678ba27b890cdba06"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.10.0/garmin-v1.10.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ad9fde913c8781361ced3b9245ba08b6bc4a2b711625033b32522c51d10a8bc1"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
