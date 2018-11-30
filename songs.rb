class Songs

  attr_reader :song_title
  attr_accessor :playlist

  def initialize(song_title)
    @song_title = song_title
    @playlist = []
  end

def add_song_to_playlist(song_title)
    total = @playlist << song_title
    return total.length
end

end
