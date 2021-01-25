require 'sinatra'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/test' do
    "Hello, world"
  end

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb(:bookmarks)
  end

  run! if app_file == $0
end
