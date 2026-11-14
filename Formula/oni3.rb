class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.gz"
    sha256 "35982bd41c45756992aaa8b1ed67fb490ecbbf6ca1bcc62706568517a40ecae6"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.gz"
    sha256 "356e7e98cdd099169b7c17d388ddce5bab3b2ce0bdaa2486d0ff9c1c5e0ec4d0"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.gz"
    sha256 "59a265a9f09c3c0995f176332a013cf9437586c4bc36f410963354335ba9e6d6"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.gz"
    sha256 "f1905722ccab895e00e09a9cb3ebbebd332e455b4d8b4d548bf80d0807c03260"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
