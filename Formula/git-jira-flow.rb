require 'formula'

class GitJiraFlow < Formula
  homepage 'https://github.com/localmed/git-jira-flow'
  url 'https://github.com/localmed/git-jira-flow.git', :tag => '0.1.1'
  version '0.1.1'

  head 'https://github.com/localmed/git-jira-flow.git', :branch => 'master'

  depends_on 'gnu-getopt'
  depends_on 'jira-cli'

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  def caveats; <<-EOS.undent
    From the command prompt, run:
        git issue start <ISSUE_KEY> [-b <BRANCH_NAME>]
        git issue finish [ISSUE_KEY]
    EOS
  end
end
