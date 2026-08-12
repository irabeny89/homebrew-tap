class Hv < Formula
  desc "A CLI to generate static HTML from JS/TS template functions and preview them."
  homepage "https://github.com/irabeny89/js-html-view"
  version "0.7.0"

  url "https://github.com/irabeny89/js-html-view/releases/download/#{version}/js-html-view-#{version}.tar.gz"
  sha256 "76956a73e3360b07253479d3bc8dccfd1b83bff89849c08dc203d0a218cdd1e7"

  # Tells Homebrew to ensure Node.js is installed on the user's system
  depends_on "node"

  def install
    # Copy all library assets into homebrew's internal cellar path
    libexec.install Dir["*"]

    # Automatically write an executable symlink wrapper that fires up Node.js
    # This mounts an ultra-light "hv" command globally that calls your script!
    bin.install_symlink libexec/"dist/index.js" => "hv"
  end

  test do
    system "#{bin}/hv", "--help"
  end
end
