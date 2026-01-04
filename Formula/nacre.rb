class Nacre < Formula
  desc "Agentic project management UI"
  homepage "https://github.com/l1x/nacre"
  url "https://github.com/l1x/nacre/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "88b673ac72e52d97f7d2081ed73181c95ef07fa52245eb4f482fa51640051f34"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre --version")
  end
end
