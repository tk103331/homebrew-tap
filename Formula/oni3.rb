class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.xz"
    sha256 "4d05acc8804c941a6b882442fdc50602886794844c067b03ebaf03a7cfdac33c"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.xz"
    sha256 "fdc23375e2b2f166d54d79bf7c0393dc5a86a478dc5ae9054dd1aea48f97dcee"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.xz"
    sha256 "438e4bca3d30e4a02ca42e18d4c96f3f170e3d79a099d62a0ed390f03184878f"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.xz"
    sha256 "a9c502d204c37189036d555cd6fc746036624415ebc17612b6b23d69af0dca82"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
