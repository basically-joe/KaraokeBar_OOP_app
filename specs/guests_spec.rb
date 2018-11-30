require("minitest/rg")
require("minitest/autorun")

require_relative("../guests")
require_relative("../songs")


class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Joe", "Sonne", 30)
    @guest2 = Guests.new("Jodie", "Chasing Cars", 40)
    @guest3 = Guests.new("Kim", "Stairway to heaven", 50)
    @guest4 = Guests.new("Sam", "Hurt", 5)
    @guest5 = Guests.new("Alan", "Blue", 100)
    
    @entry_fee = 10
  end

  def test_guest_class_exists
    assert_equal(Guests, @guest1.class())
  end

  def test_remove_money_from_wallet
    assert_equal(20, @guest1.remove_money_from_wallet(@entry_fee))
  end

end
