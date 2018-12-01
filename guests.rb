class Guests

  attr_accessor :customer_name_fav_song_wallet_hash

  def initialize(customer_name_fav_song_wallet_hash)
    @customer_name_fav_song_wallet_hash = customer_name_fav_song_wallet_hash
  end

def remove_money_from_wallet(fee)
  @customer_name_fav_song_wallet_hash[:wallet] -= fee
end

def guest_count(guests)
  p guests.length
end

def remove_guest(guests)
total = guests.delete_if { |guest| guest[:wallet] == 0 }
p total.length
end

# def find_guest_with_no_money
#   guest_with_no_money = guests.find_all { |guest| guest[:wallet] == 0 }
# end

end
