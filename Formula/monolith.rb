class Monolith < Formula
  desc "Swift CLI that scaffolds iOS apps, Swift Packages, and Swift CLIs"
  homepage "https://github.com/Luminoid/Monolith"
  url "https://github.com/Luminoid/Monolith/archive/refs/tags/0.5.0.tar.gz"
  sha256 "c543e0d4952fb5c59f3e7a4cd13ca259caa2da08e5156a4d8f0ed0b8f97dcfae"
  license "Apache-2.0"
  head "https://github.com/Luminoid/Monolith.git", branch: "main"

  depends_on xcode: ["26.0", :build]
  depends_on macos: :sonoma

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/monolith"
    generate_completions_from_executable(bin/"monolith", "completions", shell_parameter_format: :none)
  end

  test do
    assert_match "monolith #{version}", shell_output("#{bin}/monolith version")
    assert_match "doctor", shell_output("#{bin}/monolith --help")
  end
end
