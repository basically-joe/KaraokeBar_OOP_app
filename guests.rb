class Guests

  attr_reader :name, :favourite_song
  attr_accessor :customer_wallet

  def initialize(name, favourite_song, customer_wallet)
    @name = name
    @favourite_song = favourite_song
    @customer_wallet = customer_wallet
  end

def remove_money_from_wallet(fee)
  @customer_wallet -= fee
end

end
