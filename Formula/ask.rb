class Ask < Formula
  desc "Unified CLI for ChatGPT, Claude, Gemini, Grok, and Perplexity"
  homepage "https://github.com/kyupark/ask"
  url "https://github.com/kyupark/ask/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "8293c6b9f125a080e017d7a4b876c465020f0d4f1be5b538be012bd65c9ba302"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ask"
  end

  test do
    assert_match "ask provides a single interface", shell_output("#{bin}/ask --help")
  end
end
