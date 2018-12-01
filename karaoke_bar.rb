class Karaokebar

  attr_reader :bar_name, :room_capacity

  def initialize(bar_name, room_capacity)
    @bar_name = bar_name
    @room_capacity = room_capacity

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

  def room_has_capacity(room_guests, new_customer)
new_guest_numbers = room_guests << new_customer
if @room_capacity >= new_guest_numbers.length
  return true
end
  end

end
