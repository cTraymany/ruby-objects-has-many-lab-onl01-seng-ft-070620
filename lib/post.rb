# learn spec/author_spec.rb
# learn spec/post_spec.rb
require 'pry'
class Post
  attr_accessor :title, :author
  # @@all = []
  
   def initialize(title)
     @title = title
  #   @@all << self
   end

  # def self.all
  #   @@all
  # end
  
  # def artist_name
  #   self.artist != nil ? self.artist.name : nil
  # end

end