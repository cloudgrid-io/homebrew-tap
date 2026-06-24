class Cloudgrid < Formula
  desc "Build, ship, and run apps and agents on CloudGrid from your terminal"
  homepage "https://github.com/cloudgrid-io/cli"
  url "https://registry.npmjs.org/@cloudgrid-io/cli/-/cli-0.9.17.tgz"
  sha256 "300a23b36f7252ebbca6e6ad7ac7242043a5e4594d57267ac528542ff2f8d65e"
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
