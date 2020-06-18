module SongsHelper
  def display_artist(song)
   # binding.pry
    unless song.respond_to?(:artist) && !!!song.artist.nil?
      #binding.pry
      link_to "Add Artist", song_path(song) + "/edit"
    else
      link_to song.artist.name, artist_path(song.artist)
    end
  end
end
