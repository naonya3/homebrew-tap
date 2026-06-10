class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.19.4/tka-macos-arm64"
      sha256 "cfe5c5f3cf121794c11ec95e884ee32903c1984f6445c4aa9acb3977bb90602c"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.19.4/tka-linux-x64"
    sha256 "434a32368725f6fb3ff5cd29bbb3f8b517772b02be48a8ca28594b3e9206c262"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
