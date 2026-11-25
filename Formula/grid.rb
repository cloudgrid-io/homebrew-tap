class Grid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.26.0.tgz"
  sha256 "4562de7674a17eeb98a30c48c7520cc26b3b82ccb4f14256b3c1ee6bc6a9301d"
  license "MIT"

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
