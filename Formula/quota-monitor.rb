class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "40dbd9c948aaf435a55ffe6724dd3a4474ff2b9e0829a626def5138937212ff9"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota-monitor 0.2.5", shell_output("#{bin}/quota-monitor --version")
  end
end
