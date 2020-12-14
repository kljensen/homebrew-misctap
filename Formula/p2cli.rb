# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class P2cli < Formula
  desc "pongo2 cli - like the j2cli package in python, but compiles to self-contained go executables"
  homepage ""
  url "https://github.com/kljensen/p2cli/archive/r6-kljfix.tar.gz"
  version "r6-kljfix"
  sha256 " df43acec00ce31141a03a784d750b077203bc18be0c604d2db72d2a0b3e50b80"
  license "GPL-2.0"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "-o", "p2cli"
    bin.install "p2cli"
  end

  test do
    system "#{bin}/p2cli", "--help"
  end
end
