require("minitest/rg")
require("minitest/autorun")

require_relative("../karaoke_bar")
require_relative("../songs")
require_relative("../guests")


class KaraokebarTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Joe", "Sonne", 30)
    @guest2 = Guests.new("Jodie", "Chasing Cars", 40)
    @guest3 = Guests.new("Kim", "Stairway to heaven", 50)
    @guest4 = Guests.new("Sam", "Hurt", 5)
    @guest5 = Guests.new("Alan", "Blue", 100)

    @entry_fee = 10

    @Song1 = Songs.new("Blue")
    @Song2 = Songs.new("Stairway to heaven")
    @Song3 = Songs.new("Chasing Cars")
    @Song4 = Songs.new("Hurt")
    @Song5 = Songs.new("Sonne")

    @karaokebar = Karaokebar.new("Karaoke Club")
  end

  def test_karaoke_class_exists
    assert_equal(Karaokebar, @karaokebar.class())
  end

  def test_guest_numbers
    @karaokebar.guest_numbers(@guest1)
    @karaokebar.guest_numbers(@guest2)
    assert_equal(3, @karaokebar.guest_numbers(@guest3))
  end

end
