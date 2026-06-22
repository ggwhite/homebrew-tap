# typed: false
# frozen_string_literal: true

class Fourx < Formula
  desc "Multi-role AI development loop — Design, Code, Review, Test"
  homepage "https://github.com/ggwhite/4x"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ggwhite/4x/releases/download/v0.1.17/4x_0.1.17_darwin_amd64.tar.gz"
      sha256 "e108215a85d802e144581d0356c63b950e184479523fca84553b36d221db16d3"

      def install
        bin.install "4x"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ggwhite/4x/releases/download/v0.1.17/4x_0.1.17_darwin_arm64.tar.gz"
      sha256 "eddde8602b07817b435a2efa21b5db1254dfb4d1d0ecab8631f38f95e6004c65"

      def install
        bin.install "4x"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ggwhite/4x/releases/download/v0.1.17/4x_0.1.17_linux_amd64.tar.gz"
      sha256 "7b0c4c627428ed45dbe6b38319953e427827b5ae1c276ef6d010d9e9d6a4669f"
      def install
        bin.install "4x"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ggwhite/4x/releases/download/v0.1.17/4x_0.1.17_linux_arm64.tar.gz"
      sha256 "8bc9db19c4650433b83ed30451773b27d19bcf9d5f553a8ed36c26db4adbdc76"
      def install
        bin.install "4x"
      end
    end
  end

  test do
    system "#{bin}/4x", "--version"
  end
end
