class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.7.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.xz"
    sha256 "03283dc39e02abce7b12125e025933b2d4df15e130b6b84709832bae7c6e33a4"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.xz"
    sha256 "9088e1e8fd87876ea242c809bc9e55a49f74c8003fc44976d758f3cfb77ecbd1"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.xz"
    sha256 "cbb64d59065c2f509e3d37bdb2cfa36cf3d326e32052c469db933e6d8fb04634"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.xz"
    sha256 "15ec9ee377506e7ac13c0068206cd8e1f0298fe547f0272f69a566dccd8ce9be"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
