class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.5.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.xz"
    sha256 "0d5fec928d9341648646e34582841050db802990c0df4a45805156014e1de427"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.xz"
    sha256 "107a2f13bad506cfca59ac5c6ad38d4ef99d085dd84d0b7edfc9c1c36eca095d"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.xz"
    sha256 "1d4c6390a48e51383074d4761f975b079ec3ca3d55732968bf8c892c8f20d267"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.xz"
    sha256 "0860a06549048541ee96bff16d4bd53991008ce9567e43a45445f5b78b778100"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
