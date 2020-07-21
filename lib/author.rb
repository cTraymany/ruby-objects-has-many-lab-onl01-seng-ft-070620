# learn spec/author_spec.rb
# learn spec/post_spec.rb
require 'pry'

class Author
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Song.all.select { |song| song.artist == self }
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
end