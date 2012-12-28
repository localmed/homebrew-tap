require 'formula'

class GitJiraFlow < Formula
  homepage 'https://github.com/localmed/git-jira-flow'
  url 'https://github.com/localmed/git-jira-flow.git'
  version '0.1.0'

  head 'https://github.com/localmed/git-jira-flow.git', :branch => 'master'

  depends_on 'gnu-getopt'
  depends_on 'jira-cli'

  def install
    bin.install 'git-issue'
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    From the command prompt, run:
        git issue start <ISSUE_KEY> [-b <BRANCH_NAME>]
        git issue finish [ISSUE_KEY]
    EOS
  end
end
