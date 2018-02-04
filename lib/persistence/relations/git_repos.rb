module Persistence
  module Relations
    class GitRepos < ROM::Relation[:sql]
      schema(:git_repos) do
        attribute :id, Types::Int.meta(primary_key: true)
        attribute :repo_id, Types::Strict::Int
        attribute :owner_login, Types::Strict::String
        attribute :owner_avatar_url, Types::Strict::String.optional
        attribute :name, Types::Strict::String
        attribute :full_name, Types::Strict::String
        attribute :html_url, Types::Strict::String
        attribute :description, Types::Strict::String.optional
        attribute :created_at, Types::DateTime
        attribute :homepage, Types::Strict::String.optional
        attribute :size, Types::Strict::Int
        attribute :stargazers_count, Types::Strict::Int
        attribute :watchers_count, Types::Strict::Int
        attribute :language, Types::Strict::String
        attribute :forks_count, Types::Strict::Int
        attribute :open_issues_count, Types::Strict::Int
      end
    end
  end
end
