class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.19.1/tka-macos-arm64"
      sha256 "d98e4276adfd279cde3ee7eb8c2307242c955c222cdeaa144290a01ae870bba0"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.19.1/tka-linux-x64"
    sha256 "3e8d5adbec5f68fc94ed662fe3adc8d055c1e92bd218b699478bff7393c8d34f"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
