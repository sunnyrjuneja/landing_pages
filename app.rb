require 'sinatra/base'
require 'sinatra/partial'
require 'slim'
require 'sass'
require 'coffee-script'

class LandingPages < Sinatra::Base
  configure do
    Slim::Engine.set_default_options :pretty => true
    set :partial_template_engine, :slim
  end

  get '/' do
    slim :index
  end
end
