class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v1.2.0/slackline-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7cc766bd75af765c36c2ed17c17714c0eccbde1fc9ab74df3ddc856890ed9ba"
    else
      url "https://github.com/co42/slackline/releases/download/v1.2.0/slackline-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e1f5bcb81d5595ada33aa3674acf47dbf447c434ccfb007d6fba36d30cfc250"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v1.2.0/slackline-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c978e4e3bf1dd35b4da1ab778e65900309ff0f303ee6550a89fe9401d55a9bd"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
