class Grid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.15.20.tgz"
  sha256 "024c767a19a8f7ac65dc320834eed54f78cb5779e39cbeefafcd1259b81dd87a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # The CLI ships a single command: `grid`. (The deprecated `cloudgrid`,
    # `gridctl`, and `cg` aliases are not linked.)
    bin.install_symlink libexec/"bin/grid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grid --version")
  end
end
