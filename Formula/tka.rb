class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.24.0/tka-macos-arm64"
      sha256 "15a774fb7e6a10500e32a23872dead45ea343b620a4bb381e3462bfcbcc1503e"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.24.0/tka-linux-x64"
    sha256 "0011f6600db12ecaf82cf099bf431535bf19b82d681e04c3b2b9478a07f81aee"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
