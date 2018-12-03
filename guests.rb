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

  def remove_money_from_wallet__customer_can_afford_item(fee)
    if @customer_name_fav_song_wallet_hash[:wallet] >= fee
      remove_money_from_wallet(fee)
    else
      return "You don't have enough cash to enter"
    end
  end

end
