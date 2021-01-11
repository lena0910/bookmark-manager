class Bookmark
  @@all = []
  attr_reader :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end