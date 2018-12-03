class Guests


  attr_accessor :customer_name_fav_song_wallet_hash

  def money_in_wallet()
    @customer_name_fav_song_wallet_hash[:wallet]
  end

  def initialize(customer_name_fav_song_wallet_hash)
    @customer_name_fav_song_wallet_hash = customer_name_fav_song_wallet_hash
  end

  def remove_money_from_wallet(fee)
    @customer_name_fav_song_wallet_hash[:wallet] -= fee
  end

end
