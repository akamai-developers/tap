class AkamaiFunctionsMcpAT013 < Formula
  desc "A MCP Server for Akamai Functions"
  homepage "https://github.com/akamai-developers/akamai-functions-mcp-server"
  license "MIT"
  version "0.1.3"

  depends_on "spinframework/tap/spin"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-darwin-arm64.tar.gz"
      sha256 "127d217903f589274e117944f0a5c84bdb488a4df309c98d2ef9e1c7f5cdbf98"
    else
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-darwin-amd64.tar.gz"
      sha256 "e5ce653bf7d2f94b89d955cfccc150764283ae45a3eb6407bbf5802290ea084f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-linux-arm64.tar.gz"
      sha256 "9cf01411a8a50e714dbdbfb2b971f51c71d03efdfc8e1be24212934a53f45813"
    else
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-linux-amd64.tar.gz"
      sha256 "63cc8d72330b1c7580ea2236f753550d18ffa93dfab6ae180acc76eac68e40a1"
    end
  end

  def install
    bin.install "akamai-functions-mcp"
  end

  test do
    system "#{bin}/akamai-functions-mcp", "--version"
  end
end