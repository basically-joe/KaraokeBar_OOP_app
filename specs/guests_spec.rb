require("minitest/rg")
require("minitest/autorun")

require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Joe", "Sonne", 30)
    @entry_fee = 10
  end

  def test_guest_class_exists
    assert_equal(Guests, @guest.class())
  end

  def test_remove_money_from_wallet
    assert_equal(20, @guest.remove_money_from_wallet(@entry_fee))
  end

end
