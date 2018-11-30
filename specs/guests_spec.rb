require("minitest/rg")
require("minitest/autorun")

require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Joe", "Sonne", 30)
  end

  def test_guest_class_exists
    assert_equal(Guests, @guest.class())
  end

  # def test_money_in_wallet
  #   assert_equal()
  # end

end
