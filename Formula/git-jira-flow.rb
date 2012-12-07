require 'formula'


class GitJiraFlow < Formula
  homepage 'https://github.com/LocalMed/git-jira-flow'
  url 'https://github.com/LocalMed/git-jira-flow.git'
  version '0.0.3'

  head 'https://github.com/LocalMed/git-jira-flow.git', :branch => 'master'

  def install
    bin.install "git-issue"
    prefix.install Dir['*']
  end
end
