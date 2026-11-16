class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.gz"
    sha256 "d23aea68917bddb53fab42ea5006c43445a6d686dc136cf3a2897255bea17639"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.gz"
    sha256 "4b6e62eafe79a8a000d016f6de3dd73a87fe05fd79affedae23a7646016eb6ac"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.gz"
    sha256 "945f09263fdf757f710b68e90c1a3886429ff1d6399c31c6cfcb7b66de268de2"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.gz"
    sha256 "494c9684bb2287259d1372fe6e42ad95bc7028483cdabfcb9d66830724703b1e"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
