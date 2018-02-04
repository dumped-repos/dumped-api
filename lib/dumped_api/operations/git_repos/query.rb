require 'dumped_api/operation'
require 'dumped_api/import'

module DumpedApi
  module Operations
    module GitRepos
      class Query < DumpedApi::Operation

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
