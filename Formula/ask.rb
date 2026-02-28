class Ask < Formula
  desc "Unified CLI for ChatGPT, Claude, Gemini, Grok, and Perplexity"
  homepage "https://github.com/kyupark/ask"
  url "https://github.com/kyupark/ask/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c2823b021ec1c5dda5ba31f16ff871bb0b1bd7847e189706abee3814b47aded6"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ask"
  end

  test do
    assert_match "ask provides a single interface", shell_output("#{bin}/ask --help")
  end
end
