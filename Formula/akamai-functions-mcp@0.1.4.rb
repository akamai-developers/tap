class AkamaiFunctionsMcpAT014 < Formula
  desc "A MCP Server for Akamai Functions"
  homepage "https://github.com/akamai-developers/akamai-functions-mcp-server"
  license "MIT"
  version "0.1.4"

  depends_on "spinframework/tap/spin"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-darwin-arm64.tar.gz"
      sha256 "554ce5567ed5f8247a21fbf18162d917a0391b954909df582ebf6d7d0ceffb05"
    else
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-darwin-amd64.tar.gz"
      sha256 "6b63c8df3c96dbca9fdfadf4f2fd49eae7c5474d8a983d0b3e845812daf1ead0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-linux-arm64.tar.gz"
      sha256 "6daa93c7810d153fef1703bd0ec2abb3123f857d4fa430c2a52d8e7a56c08e2e"
    else
      url "https://github.com/akamai-developers/akamai-functions-mcp-server/releases/download/v#{version}/akamai-functions-mcp-#{version}-linux-amd64.tar.gz"
      sha256 "a591497004ac2c0e12263d0d8b617465594a1e9542bdbfa42ac095b1064a2afd"
    end
  end

  def install
    bin.install "akamai-functions-mcp"
  end

  test do
    system "#{bin}/akamai-functions-mcp", "--version"
  end
end