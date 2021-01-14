require 'pg'

class Bookmark
  def self.all
    begin

      con = PG.connect :dbname => 'bookmark_manager', :user => 'eevans'
      
      rs = con.exec "SELECT * FROM bookmarks"
  
      rs.each do |row|
        puts "%s %s" % [ row['id'], row['url']]
      end
      
  rescue PG::Error => e
  
      puts e.message 
      
  ensure
  
      rs.clear if rs
      con.close if con
      
  end
    
    # [
    #   "http://www.makersacademy.com",
    #   "http://www.destroyallsoftware.com",
    #   "http://www.google.com"
    #  ]
  end

end

# <% @bookmarks.each do |bookmark| %>
#   <li> <%= bookmark %> </li>
#   <% end %>
#   </ul>
#  </p>
