class ClaudeVis < Formula
  desc "Animated terminal sprites for your running Claude Code agents"
  homepage "https://github.com/turleynerd/claude-vis"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.4.0/claude-vis-darwin-arm64.tar.gz"
      sha256 "8ee72544f29d9861ca6752ecf9bfe17fe0ae523198238a86f5fe257b4bbbcd22"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.4.0/claude-vis-darwin-x64.tar.gz"
      sha256 "4156ca083f57e6cb284ab20f0e6c46d11bd26375b9e85176d05f51bdf117e613"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.4.0/claude-vis-linux-arm64.tar.gz"
      sha256 "a85af29700e6ff177890b55a93f699955fd427f76debe3f74f1812ae330856f5"
    else
      url "https://github.com/turleynerd/claude-vis/releases/download/v0.4.0/claude-vis-linux-x64.tar.gz"
      sha256 "cb52dbc7f578268181786693b32f75b696a485690dafd944be334949612eecfc"
    end
  end

  def install
    bin.install "claude-vis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-vis --version")
  end
end
