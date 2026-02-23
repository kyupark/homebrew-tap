class WebaiCli < Formula
  desc "Unified CLI for ChatGPT, Claude, Gemini, Grok, and Perplexity"
  homepage "https://github.com/kyupark/webai-cli"
  url "https://github.com/kyupark/webai-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e8f576af92b332f30217860cb4eb9c306306e347e815e6e834c5494e820a9b2a"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/webai-cli"
  end

  test do
    assert_match "Unified CLI for AI chatbots", shell_output("#{bin}/webai-cli --help")
  end
end
