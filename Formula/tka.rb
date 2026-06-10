class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.23.0/tka-macos-arm64"
      sha256 "fc9eff71ef771490111f541bbede76b99810253575a382f039d27546f1cd655c"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.23.0/tka-linux-x64"
    sha256 "04c4c7d37cac3cc44405cd4a9dc4c860a941f6c3910e12467c26361809a424b6"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
