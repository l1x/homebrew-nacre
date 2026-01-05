  class Nacre < Formula
    desc "Agentic project management UI"
    homepage "https://github.com/l1x/nacre"
    version "0.9.3"
    license "MIT"

    depends_on arch: :arm64

    url "https://github.com/l1x/nacre/releases/download/v0.9.3/nacre-aarch64-apple-darwin.tar.gz"
    sha256 "7bf44a2a125e1184c8c62b53fc3b86577abe6648e169dc6cd5ff038973e04353"

    def install
      bin.install "nacre"
    end

    test do
      assert_match "nacre", shell_output("#{bin}/nacre --version")
    end
  end
