require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/unicorn_nginx'

set :rbenv_type, :user
set :rbenv_ruby, '2.2.0'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
