class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.3.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.gz"
    sha256 "004a874e2bf4f69b24f0054e798730f63568ce733f980b0c4ae97cbe10cd723a"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.gz"
    sha256 "8aa343d58e729b41fede7e5bddf2c8be3da24e2105cc8685c77564deb5c5d38c"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.gz"
    sha256 "fb5ae1850d9e512b7681f925eeb7f001944254441ea2f87297f953d1a6fe91ce"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.gz"
    sha256 "07fd0ad6c40a2b6f67b7e5af9ed81d8eb2a80ddae9a56e74fe411df68c7f16a8"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
