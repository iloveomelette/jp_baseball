# frozen_string_literal: true

require 'spec_helper'
require 'yaml'

RSpec.describe 'Data' do
  describe 'player.yml' do
    let!(:list_of_players) do
      YAML.load_file(File.join(File.dirname(__FILE__),
                               '../../data/players.yml'))
    end

    it 'has correct size of leagues' do
      expect(list_of_players.map(&:keys).flatten.size).to eq 2
    end

    it 'has correct leagues' do
      expect(list_of_players.map(&:keys).flatten).to include(:central, :pacific)
    end

    it 'has correct size of teams in central' do
      expect(list_of_players.first[:central].map(&:keys).flatten.size).to eq 6
    end

    it 'has correct teams in central' do
      teams = list_of_players.first[:central].map(&:keys).flatten
      expect(teams).to include(:swallows, :baystars, :carp, :dragons, :giants, :tigers)
    end

    it 'has correct size of teams in pacific' do
      expect(list_of_players.last[:pacific].map(&:keys).flatten.size).to eq 6
    end

    it 'has correct teams in pacific' do
      teams = list_of_players.last[:pacific].map(&:keys).flatten
      expect(teams).to include(:baffaloes, :fighters, :hawks, :lions, :marines, :eagles)
    end
  end
end
