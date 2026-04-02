class Garmin < Formula
  desc "Garmin Connect CLI"
  homepage "https://github.com/co42/garmin-cli"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.2/garmin-v1.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "b0ac1aba41474d0e561bef4ec7ad7cf2362b8761a9f72e9a76a9db14f2edc06a"
    else
      url "https://github.com/co42/garmin-cli/releases/download/v1.9.2/garmin-v1.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "cf89547e7090d231c6814bd89dc3c52d44f770502dd459714fe4da5b2953bd04"
    end
  end

  on_linux do
    url "https://github.com/co42/garmin-cli/releases/download/v1.9.2/garmin-v1.9.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "103d3de465d98a393e27cc9ca7a3dd5654e5f576b3b31dfda1a8852e1036c68c"
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
