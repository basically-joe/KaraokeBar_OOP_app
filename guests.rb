class Guests

  attr_accessor :customer_name_fav_song_wallet_hash

  def initialize(customer_name_fav_song_wallet_hash)
    @customer_name_fav_song_wallet_hash = customer_name_fav_song_wallet_hash
    @multiple_guests = []
  end

def remove_money_from_wallet(fee)
  @customer_name_fav_song_wallet_hash[:wallet] -= fee
end

end
