class Hv < Formula
  desc "Static HTML generation template tool CLI"
  homepage "https://github.com/irabeny89/js-html-view"
  url "https://github.com/irabeny89/js-html-view/releases/download/0.2.1/hv-darwin-arm64" # (Dynamic via script)
  sha256 "PASTE_THE_FILE_SHA256_HASH_HERE"
  version "0.2.1"

  def install
    bin.install "hv-darwin-arm64" => "hv"
  end
end
