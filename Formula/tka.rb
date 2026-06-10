class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.25.0/tka-macos-arm64"
      sha256 "ed13f840c1b7432453b1f8dce712b88f096a597945dbbd9ad7e0e58dee3cafb0"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.25.0/tka-linux-x64"
    sha256 "be39fc6966f7c6b8ce58196da34b3524287ce845b9d65302f8fd167bfd705cd5"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
