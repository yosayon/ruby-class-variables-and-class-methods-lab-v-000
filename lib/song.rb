class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count.has_key?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
  end
  @@genre_count
end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count.has_key?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    end
    @@artist_count
  end

end
