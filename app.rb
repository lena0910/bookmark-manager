require "sinatra/base"
require "./units/bookmark"

class Bookmark_Manager < Sinatra::Base
  get "/" do
    erb (:index)
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb (:bookmark_list)
  end

  get '/bookmarks/new' do
    erb (:add_bookmark)
  end

  post '/bookmarks' do
    Bookmark.create(params['Bookmark'])
    redirect '/bookmarks'
  end
# .each{|bookmark| puts bookmark} 
  run! if app_file == $0
end