class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.3.0/claude-vis-darwin-arm64.tar.gz"
      sha256 "79d92c17cfcd697c23c3793a0b747e8d865868e975a987d1dc6f254dab1b520c"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.3.0/claude-vis-darwin-x64.tar.gz"
      sha256 "b6cb572d88f56ef9d0fe34d1c85563f86f7590b7c1ccdf084731919916c48541"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.3.0/claude-vis-linux-arm64.tar.gz"
      sha256 "3099171da317e8fb772f9b268357cb4687bdf0f5991b857c38d9f7d3cd56cdf8"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.3.0/claude-vis-linux-x64.tar.gz"
      sha256 "1b6db281b787ed790cc53ad2c1089797ce9a5d16289f04b194572090aead6e16"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
