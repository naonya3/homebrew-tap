class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.21.0/tka-macos-arm64"
      sha256 "579619d1d45ce078830c05555196092ea08f2616138ab69fb8ed42b845f8ed0a"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.21.0/tka-linux-x64"
    sha256 "073ac142c5964781607f5dc1fd135e52183dc58ce14f22a339c78f2879436cf1"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
