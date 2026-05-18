class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "e6839febe33cce9041f85be26811b83afbf5a8d67e3a59f02b96bc836e1fd2d8"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota-monitor 0.2.6", shell_output("#{bin}/quota-monitor --version")
  end
end
