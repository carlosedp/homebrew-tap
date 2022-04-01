class Sshoot < Formula
  include Language::Python::Virtualenv

  desc "Manage sshuttle VPN sessions"
  homepage "https://github.com/albertodonato/sshoot"
  url "https://github.com/albertodonato/sshoot/archive/refs/tags/1.5.1.tar.gz"
  sha256 "11aa43c3e75e8a61a544d4a3e7494a872716966a15a75927d89b1c2b899f89fb"
  head "https://github.com/albertodonato/sshoot.git", branch: "master"

  depends_on "python"
  depends_on "sshuttle"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/cb/7d/7e6bc4bd4abc49e9f4f5c4773bb43d1615e4b476d108d1b527318b9c6521/prettytable-3.2.0.tar.gz"
    sha256 "ae7d96c64100543dc61662b40a28f3b03c0f94a503ed121c6fca2782c5816f81"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/05/f8/67851ae4fe5396ba6868c5d84219b81ea6a5d53991a6853616095c30adc0/argcomplete-2.0.0.tar.gz"
    sha256 "6372ad78c89d662035101418ae253668445b391755cfe94ea52f1b9d22425b20"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/6f/2e/2251b5ae2f003d865beef79c8fcd517e907ed6a69f58c32403cec3eba9b2/pyxdg-0.27.tar.gz"
    sha256 "80bd93aae5ed82435f20462ea0208fb198d8eec262e831ee06ce9ddb6b91c5a5"
  end
  
  resource "toolrack" do
    url "https://files.pythonhosted.org/packages/c4/8b/39190c46bd7272813011d97b7e51532a924c4414b630094aa1bf38846714/toolrack-3.0.1.tar.gz"
    sha256 "e14c28c229b6ab49a53773db7bfc9525c4631e7538823dd9af9966dbfaecc5a1"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"sshoot", "-V"
  end
end
