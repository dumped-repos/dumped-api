class DumpedApi::Web
  route do |r|
    r.on 'api' do
      r.on 'v1' do
        r.is 'git_repos' do
          r.get do
            r.resolve 'operations.git_repos.query' do |query|
              git_repos = query.call(r.params)
              git_repos.map(&:to_h)
            end
          end
        end

        r.is 'git_repo' do
          r.on String do |name|
            git_repo = DumpedApi::Container['repositories.git_repos'].by_name(name)

            r.get do
              git_repo.to_h
            end
          end
        end
      end
    end
  end
end
