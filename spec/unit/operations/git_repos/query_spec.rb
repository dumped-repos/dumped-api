require 'db_spec_helper'
require 'looking_for_maintainers/operations/git_repos/query'

RSpec.describe LookingForMaintainers::Operations::GitRepos::Query, "#call" do
  subject { described_class.new }

  before do
    Factory[:git_repo]
    Factory[:git_repo, language: 'Ruby']
  end

  context 'without filtering params' do
    it 'returns all git repos' do
      result = subject.call

      expect(result.size).to eq 2
      expect(result[0]).to be_a(ROM::Struct::GitRepo)
    end
  end

  context 'with filtering params' do
    it 'returns all git repos wich language match the filter param' do
      result = subject.call('language' => 'ruby')

      expect(result.size).to eq 1
      expect(result.first.language).to eq('Ruby')
    end
  end
end
