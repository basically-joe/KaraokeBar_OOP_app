class Karaokebar

  attr_reader :bar_name
  attr_accessor :playlist_array, :guest_array

  def initialize(bar_name)
    @bar_name = bar_name
    @playlist_array = []
    @guest_array = []

  end

def add_guest(guest)
  total = @guest_array << guest
  return total.length
end

def remove_guest__no_money(guests)
  total = guests.delete_if { |guest| guest[:wallet] == 0 }
  p total.length
end

end
