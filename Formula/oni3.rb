class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.gz"
    sha256 "2b58ea8b8b5331160d1058243a8497f2cefee2d6cccbea1f23c3b8bb16d8bf08"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.gz"
    sha256 "76250571a6f966443ee87b22370ed544ff0d4096b3159cae3e4e48e262a27afc"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.gz"
    sha256 "d7541f289e564b772d1410e001459ff1ef9d583159e9c3073609732427578cfc"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.gz"
    sha256 "baf8e7a5cf6d35de758725a9f93306716d7c6316105bd62b5a7bcc92cdbd4c5c"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
