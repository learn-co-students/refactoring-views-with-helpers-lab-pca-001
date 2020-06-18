class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    tmp = Artist.find_or_create_by(name: name)
    tmp.songs << self
    tmp.save
  end
end
