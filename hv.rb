class Hv < Formula
  desc "A CLI to generate static HTML from JS/TS template functions and preview them."
  homepage "https://github.com/irabeny89/js-html-view"
  version "0.3.0"

  url "https://github.com/irabeny89/js-html-view/releases/download/#{version}/js-html-view-#{version}.tar.gz"
  sha256 "032ad2b5cb817d79a2f0f8921f6c69458aad6e345ee754789e882557b857e349"

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
