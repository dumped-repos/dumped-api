require 'looking_for_maintainers/repository'

module LookingForMaintainers
  module Repositories
    class GitRepos < LookingForMaintainers::Repository[:git_repos]
      commands :create
    end
  end
end
