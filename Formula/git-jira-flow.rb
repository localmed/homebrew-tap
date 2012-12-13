require 'formula'

class GitJiraFlow < Formula
  homepage 'https://github.com/LocalMed/git-jira-flow'
  url 'https://github.com/LocalMed/git-jira-flow.git'
  version '0.0.4'

  head 'https://github.com/LocalMed/git-jira-flow.git', :branch => 'master'

  depends_on 'gnu-getopt'
  depends_on 'jira-cli'

  def install
    bin.install 'git-issue'
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    From the command prompt, run:
        git issue start <JIRA-ID> [-b <DESCRIPTION>]
        git issue finish [JIRA-ID]
    EOS
  end
end
