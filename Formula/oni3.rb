class Oni3 < Formula
  desc "AI Agent TUI with tools, MCP and ACP support, built on Eino"
  homepage "https://github.com/tk103331/oni3"
  version "0.3.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_arm64.tar.gz"
    sha256 "9f58293583b546ca2a66160310c9f4e96c39b6cfd0b1edf8218d548e22c9170a"
  elsif OS.mac?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_darwin_amd64.tar.gz"
    sha256 "413a28cfe3cce38f96a52d1bc631be3e98cb195e408a7504dd9115fe660cf7a5"
  elsif Hardware::CPU.arm?
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_arm64.tar.gz"
    sha256 "ac0dda820b6cca6aba615a250672ad8512a20ed3b6459418f84c0581852c760e"
  else
    url "https://github.com/tk103331/oni3/releases/download/v#{version}/oni3_#{version}_linux_amd64.tar.gz"
    sha256 "b8f300b120549da45ec866f53638966362818b355d0dc9a1e144c7d07bf940c6"
  end

  def install
    bin.install "oni3"
  end

  test do
    system "#{bin}/oni3", "--version"
  end
end
