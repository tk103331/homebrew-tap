class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.xz"
    sha256 "18991e220a270853028d1881d916f707508ab11efe12aabd21052b37bcdd0af8"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.xz"
    sha256 "6136033e817af4ab443041af8ef2ef85b99e18b19cf605ea7381441c51e30e98"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.xz"
    sha256 "90a4eb6fa0f0a60c3309f641b1bf7c37ee95e85a3e5a53cf01ce15e3b80fa75f"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.xz"
    sha256 "71f853ee2a597473cf858d9b0d0286bf8911d28a0b6518d9b3be73821cdec06f"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
