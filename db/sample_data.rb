require_relative '../system/boot'
require 'json'

def create_git_repo(attrs)
  DumpedApi::Container['repositories.git_repos'].create(attrs)
end

def extract_repo_info(repo_hash)
  {
    repo_id: repo_hash['id'],
    owner_login: repo_hash['owner']['login'],
    owner_avatar_url: repo_hash['owner']['owner_avatar_url'],
    name: repo_hash['name'],
    full_name: repo_hash['full_name'],
    html_url: repo_hash['html_url'],
    description: repo_hash['description'],
    created_at: repo_hash['created_at'],
    homepage: repo_hash['homepage'],
    size: repo_hash['size'],
    stargazers_count: repo_hash['stargazers_count'],
    watchers_count: repo_hash['watchers_count'],
    language: repo_hash['language'],
    forks_count: repo_hash['forks_count'],
    open_issues_count: repo_hash['open_issues_count'],
  }
end


file = File.read(File.join(File.dirname(__FILE__), 'data.json'))
data = JSON.parse(file)

data.each do |repo|
  repo_info = extract_repo_info(repo)
  create_git_repo(repo_info)
end
