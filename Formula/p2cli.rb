# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class P2cli < Formula
  desc "pongo2 cli - like the j2cli package in python, but compiles to self-contained go executables"
  homepage ""
  url "https://github.com/kljensen/p2cli/archive/kljfix.tar.gz"
  sha256 "ec7b83c37898e83cdfb9e1b1c0fcce3967a3533a78f289b7381f7c18ff3ca27"
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
