class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "a63e09efc8fae6f0d82b5c3f1fa7d40c2eda26adba631e9b4d8ab5e78e0c0435"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota-monitor 0.3.1", shell_output("#{bin}/quota-monitor --version")
  end
end
