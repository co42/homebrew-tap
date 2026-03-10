class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v1.1.0/slackline-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2354ab0cdfe030c7f3676d42e7fb249ccbb51e4f8148d74ff10218d91025bda5"
    else
      url "https://github.com/co42/slackline/releases/download/v1.1.0/slackline-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1556555b93d64781ad7843c0381504984edb3330284f2ecdba68b2f0466aaf13"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v1.1.0/slackline-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f07980b82e82d176de8414fbef3520e55a9c6d71cf65225d08e4899b818d1f8"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
