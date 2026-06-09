class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.1/claude-vis-darwin-arm64.tar.gz"
      sha256 "002d47268004198af9b7267decfd193b28a494488b482080fe4cf5000727ecf1"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.1/claude-vis-darwin-x64.tar.gz"
      sha256 "4d3cadbb2a45b67954debcbe89455b7aa7c5229282fcd9a7f60dcb17153d4056"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.1/claude-vis-linux-arm64.tar.gz"
      sha256 "a0f89043c13c75ba5c3620984ff2984588aa37d09c5edecda6eb09e8389e773f"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.2.1/claude-vis-linux-x64.tar.gz"
      sha256 "59dda6986b5ed385d585899eaa2c9f43d81b8d28d515cfe0822ea574f572f1b5"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
