require 'formula'


class GitJiraFlow < Formula
  hompage 'https://github.com/LocalMed/git-jira-flow'
  url 'https://github.com/LocalMed/git-jira-flow.git', :tag => '0.0.1'
  version '0.0.1'
  
  def install
    prefix.install Dir["*"]
    bin.install 'git-issue'
  end
end
