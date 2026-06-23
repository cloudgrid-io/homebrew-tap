class Cloudgrid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.9.16.tgz"
  sha256 "ade600ceb3642f3433a3f58753dc468d46974b7cb17bdb467c9f79a2b11f57d1"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloudgrid --version")
  end
end
