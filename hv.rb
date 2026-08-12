class Hv < Formula
  desc "A CLI to generate static HTML from JS/TS template functions and preview them."
  homepage "https://github.com/irabeny89/js-html-view"
  version "0.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/irabeny89/js-html-view/releases/download/#{version}/hv-darwin-arm64"
    sha256 "6a782085dfd44a30ba882456b4012fc4b50c5098bc739397cdd55155c1c06fe3"
  else
    url "https://github.com/irabeny89/js-html-view/releases/download/#{version}/hv-darwin-x64"
    sha256 "3d082edd8e019506e32e5d30a5bc76ed596e5b96ebdde1efcc9b08377650b4f4"
  end

  def install
    # Rename the platform binary to standard "hv" on installation
    if Hardware::CPU.arm?
      bin.install "hv-darwin-arm64" => "hv"
    else
      bin.install "hv-darwin-x64" => "hv"
    end
  end

  test do
    system "#{bin}/hv", "--help"
  end
end
