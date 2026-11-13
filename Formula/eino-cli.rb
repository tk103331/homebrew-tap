class EinoCli < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/eino-cli"
  version "0.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-arm64"
    sha256 "3720f99ef33a122e3eec77c0bc2b8ffb04d5c7abca50b0a040d34c62d067d6fe"
  elsif OS.mac?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-amd64"
    sha256 "900c61a17530bf171bd6c18969cced146da584af136a0143ba467b4bb3fbb8b4"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-arm64"
    sha256 "8062860a2ebf4c7635ed64040a8ec1827e14a0444e7d969fd396856e44b1d131"
  else
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-amd64"
    sha256 "87cd14b1301e22582530bfb94e487036bebf90e5a8be65b9fd09449f50444618"
  end

  def install
    bin.install Dir["eino-*"].first => "eino"
    bin.install_symlink "eino" => "eino-cli"
  end

  test do
    system "#{bin}/eino", "--version"
  end
end
