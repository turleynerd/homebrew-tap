class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.1/claude-vis-darwin-arm64.tar.gz"
      sha256 "e52ea0e3568f1b2e2bd4805e0b99b3deb0f74cc6691fbbfc500fc4853e2615ae"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.1/claude-vis-darwin-x64.tar.gz"
      sha256 "6d04e974ca1d3196758608c461c066ed2a556ea5f5b5c8b3b429b5b6b8304268"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.1/claude-vis-linux-arm64.tar.gz"
      sha256 "ce964ed5e0a601ecbc642e4a3037cfbad730dc9cd7cf441179a132236780ad68"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.5.1/claude-vis-linux-x64.tar.gz"
      sha256 "755568644416775260cd5b0d3fd25861c24210dc8b0d1a07f27ff8ce24b9b6e3"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
