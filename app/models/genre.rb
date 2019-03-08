class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    all_artists = self.artists
    all_artists.collect do |artist|
      artist.name
    end
    # or

    # all_artists = []
    # self.artists.each do |artist_obj|
    #   all_artists << artist_obj.name
    # end
    # all_artists
  end
end
