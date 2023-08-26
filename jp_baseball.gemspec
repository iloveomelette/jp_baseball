# frozen_string_literal: true

require_relative 'lib/jp_baseball/version'

Gem::Specification.new do |gem|
  gem.name    = 'jp_baseball'
  gem.version = JpBaseball::VERSION
  gem.authors = ['iloveomelette']
  # TODO: Update email
  gem.email   = ['contacts.sample.app@gmail.com']

  gem.summary               = 'Service information about players and teams of NPB.'
  gem.description           = 'Service information about players and teams of NPB scraping from https://npb.jp'
  gem.homepage              = 'https://github.com/iloveomelette/jp_baseball'
  gem.license               = 'MIT'
  gem.required_ruby_version = '>= 2.6.0'

  gem.metadata = {
    'homepage_uri' => gem.homepage,
    'source_code_uri' => gem.homepage,
    # TODO: Update changelog_uri
    'changelog_uri' => "#{gem.homepage}/blob/main/CHANGELOG.md",
    'rubygems_mfa_required' => 'true'
  }

  gem.files         = Dir['{lib}/**/*', 'CHANGELOG.md', 'CODE_OF_CONDUCT.md', 'LICENSE', 'README.md']
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'activerecord', '>= 5.0.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-performance'
  gem.add_development_dependency 'rubocop-rake'
  gem.add_development_dependency 'rubocop-rspec'
end
