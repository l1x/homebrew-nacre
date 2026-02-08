  class Nacre < Formula
    desc "Agentic project management UI"
    homepage "https://github.com/l1x/nacre"
    version "0.9.4"
    license "MIT"

    depends_on arch: :arm64

    url "https://github.com/l1x/nacre/releases/download/v0.9.4/nacre-aarch64-apple-darwin.tar.gz"
    sha256 "c51a9a50fc05f7dc0cae3f7c68fda1a49a83c875cfbf7bd1585957164eeac2c0"

    def install
      bin.install "nacre"
    end

    test do
      assert_match "nacre", shell_output("#{bin}/nacre --version")
    end
  end
