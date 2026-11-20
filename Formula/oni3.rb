class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.7.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.xz"
    sha256 "4ab7f46372db3c160bcac09faf67091db764e3102ef510493009d62696fce29e"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.xz"
    sha256 "1674200150c4a1ff3b7df3bdb85b456b527ad4267805fd35fe338638faa6048e"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.xz"
    sha256 "3fe8c8f98ee5201591b15252e7fca7b62c4dbf16de9a3085450b1b20ac40361d"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.xz"
    sha256 "f7aedf2c8097e4cfd5b45c0a502dc485d15115f094212490b963a18c8edbd315"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
