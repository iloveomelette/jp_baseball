# frozen_string_literal: true

require 'yaml'

RSpec.describe Data do
  describe 'player.yml' do
    let!(:list_of_players) { YAML.load_file(File.join(File.dirname(__FILE__),
                                                      '../../data/players.yml')) }

    it 'has correct leagues' do
      leagues = list_of_players.map(&:keys).flatten
      expect(leagues.size).to eq 2
      expect(leagues).to include(:central, :pacific)
    end

    it 'has correct teams' do
      central_teams = list_of_players.first[:central].map(&:keys).flatten
      pacific_teams = list_of_players.last[:pacific].map(&:keys).flatten
      expect(central_teams.size).to eq 6
      expect(central_teams).to include(:swallows, :baystars, :carp, :dragons, :giants, :tigers)
      expect(pacific_teams.size).to eq 6
      expect(pacific_teams).to include(:baffaloes, :fighters, :hawks, :lions, :marines, :eagles)
    end
  end
end
