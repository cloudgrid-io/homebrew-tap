class Grid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.22.0.tgz"
  sha256 "587c92f4ffdd832f6196a9cbbf486194b36b1300414017b4d5e637bba51cf6aa"
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
