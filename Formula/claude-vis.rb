class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.1.0/claude-vis-darwin-arm64.tar.gz"
      sha256 "7664d9e90f87dec123304acbaa0cdd5b7e748c439c6798c8f25ae48d690cd911"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.1.0/claude-vis-darwin-x64.tar.gz"
      sha256 "619edfde46746e49b01b058062383b96c746c97d0114c2f1c317dc4350a8cceb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.1.0/claude-vis-linux-arm64.tar.gz"
      sha256 "00594ab08601467ec4fdbe2030ea6ed802e59fe8427d5360c8e07b80c760b515"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.1.0/claude-vis-linux-x64.tar.gz"
      sha256 "3fe63662b2dcc108995bd1049f50d9884d25fa967dedd319071bd4a62a2655da"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
