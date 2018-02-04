require 'looking_for_maintainers/operation'
require 'looking_for_maintainers/import'

module LookingForMaintainers
  module Operations
    module GitRepos
      class Query < LookingForMaintainers::Operation

        include Import['repositories.git_repos']

        def call(params = {})
          if language = params['language']
            git_repos.by_language(language)
          else
            git_repos.all
          end
        end
      end
    end
  end
end
