class Cloudgrid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.13.0.tgz"
  sha256 "1c949d58f659a953982fac67038ab612679b22c67aaf464a239d55e7e2dfb58b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloudgrid --version")
  end
end
