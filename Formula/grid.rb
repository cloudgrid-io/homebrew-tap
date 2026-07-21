class Grid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.15.16.tgz"
  sha256 "720d85053e1aed28b2d37c903fc4c19ff48d9d9d2642cbe992c34ea892dac03d"
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
