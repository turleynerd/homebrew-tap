class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.0/claude-vis-darwin-arm64.tar.gz"
      sha256 "9973718b22344d5fd4259420fb5deb13a62b9b4c47602eb2d4342bd7795b50a0"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.0/claude-vis-darwin-x64.tar.gz"
      sha256 "6ca5e30fae6a8327ff845b8a30bbb95a457b1566321d765fbddcbf902924cfbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.0/claude-vis-linux-arm64.tar.gz"
      sha256 "5ece05ab224b04b4904c6a82b1984346049ec70bbe5ec9cbf5e32294ac05a3e9"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.0/claude-vis-linux-x64.tar.gz"
      sha256 "471786bd50392cad0bc8d96a856001d9347315f05cf9bd6fd46c02a5bffa14fd"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
