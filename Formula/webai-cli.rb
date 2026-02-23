class WebaiCli < Formula
  desc "Unified CLI for ChatGPT, Claude, Gemini, Grok, and Perplexity"
  homepage "https://github.com/kyupark/webai-cli"
  url "https://github.com/kyupark/webai-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e9be246789e62c180faa4a240b66130fda04d8a0c6d8cb870b4255efe34fda65"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/webai-cli"
  end

  test do
    assert_match "Unified CLI for AI chatbots", shell_output("#{bin}/webai-cli --help")
  end
end
