# learn spec/author_spec.rb
# learn spec/post_spec.rb
require 'pry'

class Author
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select { |post| post.author == self }
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.song_count
    Song.all.count
  end
end