require("minitest/rg")
require("minitest/autorun")

require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Joe")
  end

  def test_guest_class_exists
    assert_equal(Guests, @guest.class())
  end

end
