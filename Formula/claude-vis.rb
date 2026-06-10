class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.2/claude-vis-darwin-arm64.tar.gz"
      sha256 "b03a7061f7fda330eb814279a04ac6eb3425af1ad47cfc4d413fff238caaa066"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.2/claude-vis-darwin-x64.tar.gz"
      sha256 "ac5d83b20e723b0ad10a36f907f7e0a7c14fac3f7228ab1056644b19f10d049c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.2/claude-vis-linux-arm64.tar.gz"
      sha256 "cbe3ebfc6552d89d98e8824613ae1b31e357a185e659c5995d4fc8de4e7e4c18"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.2/claude-vis-linux-x64.tar.gz"
      sha256 "87d610da9df7840348921d281570c3806654019f695c8f0d5e917e601cdf2e4d"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
