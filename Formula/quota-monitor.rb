class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "db9cddf7835eb428c7d402f3b0a75d1ed9a163d5a0482157cdcaf944de11c2d4"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota-monitor 0.2.4", shell_output("#{bin}/quota-monitor --version")
  end
end
