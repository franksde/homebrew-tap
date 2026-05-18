class QuotaMonitor < Formula
  include Language::Python::Virtualenv

  desc "Claude Code & Codex CLI quota monitor and reset reminder tool"
  homepage "https://github.com/franksde/quota-monitor"
  url "https://github.com/franksde/quota-monitor/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "81da9941dc37c07bc108e9ba6ec09a522e0e00182f07aa4b4ba2ba61134431fb"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quota-monitor 0.3.0", shell_output("#{bin}/quota-monitor --version")
  end
end
