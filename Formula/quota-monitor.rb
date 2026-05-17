class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "b6ce1c595d62261679bb5ac56754a657023098d09f427cce06be01a4bb482894"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota_monitor 0.2.2", shell_output("#{bin}/quota-monitor --version")
  end
end
