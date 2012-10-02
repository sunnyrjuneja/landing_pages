require 'sinatra'
require 'slim'
require 'sass'
require 'coffee-script'
require 'sinatra/partial'

configure do
  Slim::Engine.set_default_options :pretty => true
  set :partial_template_engine, :slim
end

get '/' do
  slim :index
end
