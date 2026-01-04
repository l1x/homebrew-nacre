  class Nacre < Formula
    desc "Agentic project management UI"
    homepage "https://github.com/l1x/nacre"
    version "0.9.2"
    license "MIT"

    depends_on arch: :arm64

    url "https://github.com/l1x/nacre/releases/download/v0.9.2/nacre-aarch64-apple-darwin.tar.gz"
    sha256 "722a06192dc56f0ad73a6e9db3f4fde93fa2c22038e43663eac3487186014007"

    def install
      bin.install "nacre"
    end

    test do
      assert_match "nacre", shell_output("#{bin}/nacre --version")
    end
  end
