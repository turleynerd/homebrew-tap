class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.0/claude-vis-darwin-arm64.tar.gz"
      sha256 "1e0bb7bb12d06272357f21081b45520412b7622a95a220e7333cf6b24bf4b4af"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.0/claude-vis-darwin-x64.tar.gz"
      sha256 "7873bdcc48ccd3c3f2592420d4503a405f0dcc7d3c2d986df48092b3ccbc195e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.0/claude-vis-linux-arm64.tar.gz"
      sha256 "f77abc2592e8b9820e92c58f669265bb3c4fd999e0c7666bcceec90053046a3a"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.0/claude-vis-linux-x64.tar.gz"
      sha256 "df0631e0e7515a6d2d28d4bda9251e85b0de7e6066bf1b0e299228a0a7f99b8b"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
