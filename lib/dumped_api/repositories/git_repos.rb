require 'dumped_api/repository'

module DumpedApi
  module Repositories
    class GitRepos < DumpedApi::Repository[:git_repos]
      commands :create

      def all
        git_repos.to_a
      end

      def by_name(name)
        git_repos.by_name(name).one!
      end

      def by_language(language)
        git_repos.by_language(language)
      end
    end
  end
end
