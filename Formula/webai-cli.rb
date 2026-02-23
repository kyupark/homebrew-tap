class WebaiCli < Formula
  desc "Unified CLI for ChatGPT, Claude, Gemini, Grok, and Perplexity"
  homepage "https://github.com/kyupark/webai-cli"
  url "https://github.com/kyupark/webai-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9f251463174953d53ee25964c718f82b181b3e3868b5bfca0f0a18ead819b4ac"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/webai-cli"
  end

  test do
    assert_match "Unified CLI for AI chatbots", shell_output("#{bin}/webai-cli --help")
  end
end
