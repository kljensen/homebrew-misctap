# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CavifRs < Formula
  desc "AVIF image creator in pure Rust"
  homepage "https://lib.rs/cavif"
  url "https://github.com/kornelski/cavif-rs/archive/v0.6.6.tar.gz"
  sha256 "55b326b001b4a9ed62842bc65ea8bf00ef25081078f44a6d2c55aa3c3eafdd79"
  license "BSD-3-Clause"

  depends_on "rust" => :build


  def install
    system "cargo", "build", "--release", "--bin", "cavif"
    bin.install "target/release/cavif"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cavif-rs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/cavif"
  end
end
