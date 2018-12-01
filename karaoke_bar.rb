class Karaokebar

  attr_reader :bar_name

  def initialize(bar_name)
    @bar_name = bar_name

  end

  def add_guest(guests, new_customer)
    total = guests << new_customer
    total.length
  end

  def remove_guest__no_money(guests)
    total = guests.delete_if { |guest| guest[:wallet] == 0 }
    total.length
  end

  def add_song_to_room(playlist, new_song)
    new_playlist = playlist << new_song
    new_playlist.length
  end

end
