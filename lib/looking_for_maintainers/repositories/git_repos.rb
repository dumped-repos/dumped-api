require 'looking_for_maintainers/repository'

module LookingForMaintainers
  module Repositories
    class GitRepos < LookingForMaintainers::Repository[:git_repos]
      commands :create

      def all
        git_repos.to_a
      end

      def by_language(language)
        git_repos.by_language(language)
      end
    end
  end
end
