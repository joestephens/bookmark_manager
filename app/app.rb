ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'

require_relative 'data_mapper_setup'
require_relative 'server'
require_relative 'controllers/links'
require_relative 'controllers/tags'
require_relative 'controllers/users'

class Bookmarks < Sinatra::Base
  use Rack::MethodOverride
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Flash

  get '/' do
    redirect '/links'
  end
end
