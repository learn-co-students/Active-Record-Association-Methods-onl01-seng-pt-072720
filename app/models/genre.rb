class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.length
  end

  def artist_count
    self.artists.all.length
  end

  def all_artist_names
    array = []
    self.artists.all.each do |t|
      array << t.name
    end
    array
  end
end
