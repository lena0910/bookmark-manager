require "sinatra/base"

class Bookmarks < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end
  
  run! if app_file == $0
end