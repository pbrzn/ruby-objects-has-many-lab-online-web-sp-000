require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name=name
    @songs = []
  end
  
  def add_song(song)
    song.artist=self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    song_name=Song.new(song_name)
    song_name.artist=self
    @songs << song_name
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    counter=0
    self.songs {|song| counter+=1}
    counter
  end
end