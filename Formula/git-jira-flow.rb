require 'formula'

class GitJiraFlow < Formula
  homepage 'https://github.com/localmed/git-jira-flow'
  url 'https://github.com/localmed/git-jira-flow.git', :tag => 'v0.3.6'
  version '0.3.6'

  head 'https://github.com/localmed/git-jira-flow.git', :branch => 'master'

  depends_on 'gnu-getopt'
  depends_on 'jira-cli'

  def install
    system 'make', "prefix=#{prefix}", 'install'
  end

  def caveats; <<-EOS.undent
    From the command prompt, run:
        git issue start [<issuekey>] [-b <branchname>] [-H]
        git issue finish [<issuekey>] [-H]
    EOS
  end
end
