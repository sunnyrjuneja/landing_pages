require 'sinatra/base'
require 'sinatra/partial'
require 'slim'
require 'sass'
require 'coffee-script'
require 'json'
require 'mongo'

class LandingPages < Sinatra::Base
  configure do
    Slim::Engine.set_default_options :pretty => true
    set :partial_template_engine, :slim
    conn = Mongo::Connection.new("localhost")
    db = conn.db("leads")
    $collection = db.collection("laws")
  end

  get '/' do
    slim :index
  end

  post '/email' do
    email = { "email" => params[:email] }
    $collection.insert(email)
    redirect "emails"
  end

  get "/emails" do
    content_type :json
    @contacts = $collection.find()
    @results = @contacts.to_a()
    JSON.dump(@results)
  end
end
