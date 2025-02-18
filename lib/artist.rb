require_relative('../lib/song.rb')

class Artist
    attr_accessor :name
  
    @@song_count = 0
  
    def initialize(name)
      @name = name
    #   @@song_count += 1
    end

  
    def add_song(song)
      self.songs << song
      song.artist = self
      @@song_count +=1
    end
  
    def add_song_by_name(name)
      song = Song.new(name)
      self.songs << song
      song.artist = self
      @@song_count +=1
    end
  
    # def songs
    #     Artist.all.select {|song| song.artist == self}
    # end

    def songs
        Song.all.select { |song| song.artist == self}
    end


    def self.song_count
      @@song_count
    end

  end

  adele = Artist.new("Adele")
  hello = Song.new("Hello")
  adele.add_song_by_name(hello)
  puts adele.songs