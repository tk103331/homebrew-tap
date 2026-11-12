class EinoCli < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/eino-cli"
  version "0.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-arm64"
    sha256 "ee9ec8cde533bc5905a1f6437ee774794f7cd6ce5a6a3315fdce24f858bc97a3"
  elsif OS.mac?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-darwin-amd64"
    sha256 "779b6da4564d2ea7c1064a53fd09ed67fdecbf30a3f9aff05029600a0b52bbc0"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-arm64"
    sha256 "5f96035aa4b9a007da4ff96dc5f9bbfe9c8016947f6b84ce7e6fe9579cb18159"
  else
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino-linux-amd64"
    sha256 "794205a83cadf825201ec3fb04a5548c46c9e3b389b1f110a1e99cffecde8f2a"
  end

  def install
    bin.install Dir["eino-*"].first => "eino"
    bin.install_symlink "eino" => "eino-cli"
  end

  test do
    system "#{bin}/eino", "--version"
  end
end
