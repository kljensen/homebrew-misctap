# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class P2cli < Formula
  desc "pongo2 cli - like the j2cli package in python, but compiles to self-contained go executables"
  homepage ""
  url "https://github.com/wrouesnel/p2cli/archive/r6.tar.gz"
  sha256 "341088eae76d2d3000a8bb0f0a4b1b86a98750eb2831ab1dd4fc22ff058a150d"
  license "GPL-2.0"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "-mod", "vendor", "-o", "p2cli"
    bin.install "p2cli"
  end

  test do
    system "#{bin}/p2cli", "--help"
  end
end
