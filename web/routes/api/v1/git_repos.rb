class DumpedApi::Web
  route do |r|
    r.on 'api' do
      r.on 'v1' do
        r.on 'git_repos' do
          r.get do
            r.resolve 'operations.git_repos.query' do |query|
              git_repos = query.call(r.params)
              git_repos.map(&:to_h)
            end
          end
        end
      end
    end
  end
end
