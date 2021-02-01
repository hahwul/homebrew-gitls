# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitls < Formula
  desc "Listing git repository from URL/User/Org"
  homepage "https://github.com/hahwul/gitls"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hahwul/gitls/releases/download/v1.0.0/gitls_1.0.0_darwin_amd64.tar.gz"
    sha256 "93a313e288f71253df524f7bc6956bf2fb0c9b83c6141df6b2658819ab10ce71"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hahwul/gitls/releases/download/v1.0.0/gitls_1.0.0_linux_amd64.tar.gz"
    sha256 "6d131f81eff204a93a7c150df72a75812c76ccc242d4b28fa8b580728c198eea"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/hahwul/gitls/releases/download/v1.0.0/gitls_1.0.0_linux_armv6.tar.gz"
    sha256 "9394c6c2ba3d70e271710e5fc57e93a54e9e984d14c7a2a2941f98d3f7ce2b90"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hahwul/gitls/releases/download/v1.0.0/gitls_1.0.0_linux_arm64.tar.gz"
    sha256 "35f56285735fa9a6b225333a3d14bba705f7c5bf901d967be3b35e0cbf881195"
  end

  def install
    bin.install "gitls"
  end

  test do
    system "#{bin}/gitls -version"
  end
end
