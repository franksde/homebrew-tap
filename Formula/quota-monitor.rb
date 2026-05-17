class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "75047dc1bc448268a746af38b6069b516a0f6d7fe9ca8eff65f53a1ddc08f991"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota_monitor 0.2.1", shell_output("#{bin}/quota-monitor --version")
  end
end
