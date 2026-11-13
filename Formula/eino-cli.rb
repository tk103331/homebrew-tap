class EinoCli < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/eino-cli"
  version "0.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_darwin_arm64.tar.gz"
    sha256 "bd77cddbd61fd26d8a0befb184dde29f6b1dad11cf04636b756ba55477da1276"
  elsif OS.mac?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_darwin_amd64.tar.gz"
    sha256 "3888da8d63f22f439d3ef3fa6c6f852586717d6021797994cc99e63fe28b2070"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_linux_arm64.tar.gz"
    sha256 "a33ebbeb6efb746bd15320d5a12c8550f3501515b5a3720795f6a4bf110c3552"
  else
    url "https://github.com/tk103331/eino-cli/releases/download/v#{version}/eino_#{version}_linux_amd64.tar.gz"
    sha256 "0fe04cc3b3c15acf7467dab52a29e9572bc635905d5b209cafc13fba088a089f"
  end

  def install
    bin.install "eino"
    bin.install_symlink "eino" => "eino-cli"
  end

  test do
    system "#{bin}/eino", "--version"
  end
end
