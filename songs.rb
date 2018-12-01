class Songs

  attr_reader :song_title

  def initialize(song_title)
    @song_title = song_title
  end

  def song_in_playlist__true(songs)
    p songs.any? { |song| song[:song_title] == "Sonne" }
  end

end
