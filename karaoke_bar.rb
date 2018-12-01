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

def remove_guest(guest)
  total = @guest_array.shift
  return total.length
end

end
