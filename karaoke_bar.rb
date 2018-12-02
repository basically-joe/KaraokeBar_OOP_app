class Karaokebar

  attr_reader :bar_name, :room_capacity
  attr_accessor :karaoke_room_guests, :karaoke_room_playlist

  def initialize(bar_name, room_capacity)
    @bar_name = bar_name
    @karaoke_room_guests = []
    @karaoke_room_playlist = []
    @room_capacity = room_capacity

  end

  def count_guests_in_room
    @karaoke_room_guests.length
  end

  def add_guest_to_room(guest)
    total = @karaoke_room_guests << guest
    total.length
  end

  def remove_guest_from_room
    remove1 = @karaoke_room_guests.pop
    return @karaoke_room_guests.length
  end

  def add_song_to_room_playlist(song)
    total = @karaoke_room_playlist << song
    total.length
  end

  def remove_song_from_room_playlist
    remove1 = @karaoke_room_playlist.pop
    return @karaoke_room_playlist.length
  end

  def room_has_reached_capacity()
    if @karaoke_room_guests.length >= @room_capacity
      return true
    else
      false
    end
  end

end
