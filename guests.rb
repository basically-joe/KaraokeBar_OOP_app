class Guests

  attr_accessor :customer_name_fav_song_wallet_hash, :new_customer

  def initialize(customer_name_fav_song_wallet_hash)
    @customer_name_fav_song_wallet_hash = customer_name_fav_song_wallet_hash
    @new_customer = new_customer
  end

  def remove_money_from_wallet(fee)
    @customer_name_fav_song_wallet_hash[:wallet] -= fee
  end

  def guest_count(guests)
    p guests.length
  end

  def remove_guest__no_money(guests)
    total = guests.delete_if { |guest| guest[:wallet] == 0 }
    p total.length
  end

  def add_guest(guests, new_customer)
    total = guests << new_customer
    p total.length
  end

end
