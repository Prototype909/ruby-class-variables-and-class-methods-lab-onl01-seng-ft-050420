class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genere = []
  @@artist = []

 def initialize(song, artist, genre)
   @name = song
   @artist = artist
   @genere = genre
   @@count += 1
   @@genere << genre
   @@artist << artist
 end

 def name(name)

end
