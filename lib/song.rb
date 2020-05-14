class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genre = []
  @@artist = []

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genere = genre

   @@count += 1
   @@genere.push(genre)
   @@artist.push(artist)
 end

 def self.count
   @@count
 end
end
