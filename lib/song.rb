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
   @@genre.push(genre)
   @@artist.push(artist)
 end

 def self.count
   @@count
 end

 def self.artists
   @@artist.uniq
 end

 def self.genre
   @@genre.uniq
 end
end
