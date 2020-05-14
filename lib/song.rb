class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

 def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre

   @@count += 1
   @@artists.push(artist)
   @@genres.push(genre)
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
   genres_hash = Hash.new(0)
   @@genres.each do |genre|
     genres_hash [genre] += 1
   end
   genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each do |artist|
      artists_hash [artist] += 1
    end
    artists_hash
   end
end
