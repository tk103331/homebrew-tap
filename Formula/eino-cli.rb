class EinoCli < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/eino-cli"
  version "0.2.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_darwin_arm64.tar.gz"
    sha256 "ccc9199af30f068e05aacbae7b77d525e72f2c0fe0b8baf3e8cd52a59314b8c0"
  elsif OS.mac?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_darwin_amd64.tar.gz"
    sha256 "b90a7a804a16aff23c4c6c16ce883de67d464bda32f2d1226bad09aa991a42ba"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_linux_arm64.tar.gz"
    sha256 "493577e5f3cf91a45237e2fbdb96be25e7437c6d0ce68c2e2fd315736c97d7d4"
  else
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_linux_amd64.tar.gz"
    sha256 "ef94efec335185c7266f32f52ce8f53aae9840ff73b7d23ccc18de2e928e9ae4"
  end

  def install
    bin.install "eino"
    bin.install_symlink "eino" => "eino-cli"
  end

  test do
    system "#{bin}/eino", "--version"
  end
end
