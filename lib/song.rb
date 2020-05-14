class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genres = []

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre

   @@count += 1
   @@genres.push(genre)
   @@artists.push(artist)
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

 def self.genre_count
   genre_hash = Hash.new(0)
   @@genre.each do |genre|
     genre_hash [genre] += 1
   end
   genre_hash
  end
end
