require "sinatra/base"
require "./units/bookmark"

class Bookmark_Manager < Sinatra::Base
  get "/" do
    erb (:index)
  end

  get "/bookmarks" do
    5.times{Bookmark.new("Goggle")}
    @bookmarks = Bookmark.all
    erb (:bookmark_list)
  end
# .each{|bookmark| puts bookmark} 
  run! if app_file == $0
end