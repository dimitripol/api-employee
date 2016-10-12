source 'https://rubygems.org'
require 'rbconfig'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'figaro'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'rack-cors'

if RbConfig::CONFIG['target_os'] =~ /darwin(1[0-3])/i
  gem 'rb-fsevent', '<= 0.9.7'
end

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]