# This file was generated by GoReleaser. DO NOT EDIT.
class Hikeshi < Formula
  desc "Hikeshi is a security incident response application that keeps documenting incidents simple, so you can focus on fighting fires."
  homepage "https://github.com/brittonhayes/hikeshi"
  version "0.0.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/brittonhayes/hikeshi/releases/v0.0.9/hikeshi_0.0.9_darwin_amd64.tar.gz"
    sha256 "0925063a528ed35ffe705eea691cff0012a6650284c7e4bd89f8059532715477"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/brittonhayes/hikeshi/releases/v0.0.9/hikeshi_0.0.9_linux_amd64.tar.gz"
      sha256 "b7729c727b4a6232d5c07ac65e23ce564a67c334c4034d64a28514f638c16828"
    end
  end
  
  depends_on "git"
  depends_on "zsh" => :optional

  def install
    bin.install "hikeshi"
  end

  def caveats; <<~EOS
    hikeshi --help
  EOS
  end
end
