class Tka < Formula
  desc "Workflow declaration DSL for AI agents"
  homepage "https://github.com/naonya3/tka"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naonya3/tka/releases/download/v0.19.0/tka-macos-arm64"
      sha256 "64245d5c89bc968496aae268a2c313202af6d99e57fa19d9375c3508a015ce15"

      def install
        bin.install "tka-macos-arm64" => "tka"
      end
    end
  end

  on_linux do
    url "https://github.com/naonya3/tka/releases/download/v0.19.0/tka-linux-x64"
    sha256 "75f0de682bbd62ba24480b65a27115639a6f2a7a377d72d39cf2bfc09b9e850c"

    def install
      bin.install "tka-linux-x64" => "tka"
    end
  end

  test do
    assert_match "Ticket for Agents", shell_output("#{bin}/tka --help 2>&1", 0)
  end
end
