require 'sinatra'

class Bookmark < Sinatra::Base 

  get '/test' do
    "Hello, world"
  end

  get '/' do
    erb(:index)
  end
  
end