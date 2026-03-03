class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.6.0/slackline-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "da56c0159bd8018d590c4b3a736f00ae5410ab5099b7e31b17dee94bfd4135ce"
    else
      url "https://github.com/co42/slackline/releases/download/v0.6.0/slackline-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "321161b369ce6b6dd6586b30ed65549731e9d35711d085a8f35707bbc656d8ac"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.6.0/slackline-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff34cb1ffe6f06c893e0424e9c06bcf0561e73c75d17b915c0b6210de0d573ed"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
