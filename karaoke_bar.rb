class Karaokebar

  attr_reader :bar_name, :room_capacity, :entry_fee
  attr_accessor :karaoke_room_guests, :karaoke_room_playlist, :customer_cash_check

  def initialize(bar_name, room_capacity)
    @bar_name = bar_name
    @karaoke_room_guests = []
    @karaoke_room_playlist = []
    @room_capacity = room_capacity
    @entry_fee = 10
    @customer_cash_check = []

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

  def guest_trying_to_enter__room_at_capacity(new_guest)
    if room_has_reached_capacity
      return count_guests_in_room
    else
      add_guest_to_room(new_guest)
    end
  end

  def customer_entering_money_check(new_guest)
    if new_guest.remove_money_from_wallet__customer_afford_fee_check(@entry_fee)
      return add_guest_to_room(new_guest)
    else
      return "You don't have enough cash to enter!"
    end
  end

end
