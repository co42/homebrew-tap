class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v3.0.0/garmin-v3.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "d3577373428aa48bdb0dd49393cbd9f618271cf1581ab9b7cba54910a31f163d"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v3.0.0/garmin-v3.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "cfd9ea0be22ff37ba8aab40fba6e4435e89cf25ba881360bc7aa755d31556f48"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v3.0.0/garmin-v3.0.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "398ce6d2b4a8acecdffff4e5ab679462512090d5b8f655c5be456d482c0f111f"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
