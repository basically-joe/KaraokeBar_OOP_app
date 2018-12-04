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

  def remove_money_from_wallet__customer_afford_fee_check(fee)
    if @customer_name_fav_song_wallet_hash[:wallet] >= fee
      return true
    else
      return false
    end
  end

  def customers_fave_song__check(song)
    if @customer_name_fav_song_wallet_hash[:fav_song] == song
      return true
    else
      return
      false
    end
  end

end
