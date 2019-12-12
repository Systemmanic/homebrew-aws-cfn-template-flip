class AwsCfnTemplateFlip < Formula
  include Language::Python::Virtualenv

  desc "Convert AWS CloudFormation between JSON and YAML"
  homepage "https://github.com/awslabs/aws-cfn-template-flip"
  url "https://github.com/awslabs/aws-cfn-template-flip/archive/1.2.2.tar.gz"
  sha256 "c2780f27b74bd14222d19dd82b2b60ca6451c91e5a5ea963758b085bf9dde9ea"

  depends_on "python"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/8d/c9/e5be955a117a1ac548cdd31e37e8fd7b02ce987f9655f5c7563c656d5dcb/PyYAML-5.2.tar.gz"
    sha256 "c0ee8eca2c582d29c3c2ec6e2c4f703d1b7f1fb10bc72317355a746057e7346c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/3e/edcf6fef41d89187df7e38e868b2dd2182677922b600e880baad7749c865/six-1.13.0.tar.gz"
    sha256 "30f610279e8b2578cab6db20741130331735c781b56053c59c4076da27f06b66"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz"
    sha256 "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin / "cfn-flip"
  end
end
