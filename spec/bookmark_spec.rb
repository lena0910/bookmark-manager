require "./units/bookmark"

describe "bookmark" do
  it "can respond to the class method .all" do
    bookmark_1 = Bookmark.new
    expect(Bookmark.all).to include (bookmark_1)
  end
end