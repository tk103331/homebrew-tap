class EinoCli < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/eino-cli"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-arm64"
    sha256 "56422e87326105d35b021ffd6fff5a787db299dbb9b000075fa91e0e53014ebc"
  elsif OS.mac?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-amd64"
    sha256 "8cbd31c419ca7bc73dea1127ab3919225044a50a173a993cb922746fde1c2231"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-arm64"
    sha256 "63ff68c6c94dcd5d9b9abcb9e35f37f08515db939328464f30b424a2f2b4dbd3"
  else
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-amd64"
    sha256 "8027ae69fb590bb8f6289992486175194607665c171962f2b7b174f55c558cec"
  end

  def install
    bin.install Dir["eino-*"].first => "eino"
    bin.install_symlink "eino" => "eino-cli"
  end

  test do
    system "#{bin}/eino", "--version"
  end
end
