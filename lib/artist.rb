require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name=name
    @songs = []
  end
  
  def songs
    Song.all.select {|songs|
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
  
  def self.song_count
    counter=0
    @songs.each {|song| counter+=1}
    binding.pry
    counter
  end
end