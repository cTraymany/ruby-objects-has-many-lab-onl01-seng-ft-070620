# learn spec/artist_spec.rb
# learn spec/song_spec.rb
require 'pry'

class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    Song.new(name)
    add_song(name)
  end
  
  
  
  
  
end