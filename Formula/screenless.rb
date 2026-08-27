class Screenless < Formula
  desc "Very normal screen recording software"
  homepage "https://github.com/Duisternis/screenless"
  url "https://github.com/duisternis/screenless/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "de0d8e92604ab90ad4e741eb6a575baa9aea57e3fe080d2c37e5229f6e4d55e1"
  license "GPL-3.0-only"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "under-construction", shell_output(bin/"screenless")
  end
end
