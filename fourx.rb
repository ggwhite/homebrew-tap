# typed: false
# frozen_string_literal: true

class Fourx < Formula
  desc "Multi-role AI development loop — Design, Code, Review, Test"
  homepage "https://github.com/ggwhite/4x"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ggwhite/4x/releases/download/v0.2.3/4x_0.2.3_darwin_amd64.tar.gz"
      sha256 "131705d9f6250bc7f62e7ed35cac8979ee0ab8235b93bd83ea11e4f1adfbf0d0"

      def install
        bin.install "4x"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ggwhite/4x/releases/download/v0.2.3/4x_0.2.3_darwin_arm64.tar.gz"
      sha256 "0cc2d4403a8bb2df545038d0ea82a45fc75e2f65455937109e3bf21653985696"

      def install
        bin.install "4x"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/ggwhite/4x/releases/download/v0.2.3/4x_0.2.3_linux_amd64.tar.gz"
      sha256 "8ceddf6314341b71507bd3efee5db6dc687d38adfc036d84abcee386a820e1a0"
      def install
        bin.install "4x"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ggwhite/4x/releases/download/v0.2.3/4x_0.2.3_linux_arm64.tar.gz"
      sha256 "03f5763becd337cde6724b569d3a8c7d0b7d2f958cb53d1018201fa1ad18407f"
      def install
        bin.install "4x"
      end
    end
  end

  test do
    system "#{bin}/4x", "--version"
  end
end
