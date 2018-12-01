require("minitest/rg")
require("minitest/autorun")

require_relative("../karaoke_bar")
require_relative("../songs")
require_relative("../guests")


class KaraokebarTest < MiniTest::Test

  def setup
    @guest1 = Guests.new({name: "Joe", fav_song: "Sonne", wallet: 30})
    @guest2 = Guests.new({name: "Jodie", fav_song: "Chasing Cars", wallet: 40})
    @guest3 = Guests.new({name: "Kim", fav_song: "Stairway to heaven", wallet: 50})
    @guest4 = Guests.new({name: "Sam", fav_song: "Hurt", wallet: 5})
    @guest5 = Guests.new({name: "Alan", fav_song: "Blue", wallet: 100})

    @mutlitple_guests = ([
      {name: "Joe", fav_song: "Sonne", wallet: 30},
      {name: "Jodie", fav_song: "Chasing Cars", wallet: 40},
      {name: "Kim", fav_song: "Stairway to heaven", wallet: 50},
      {name: "Sam", fav_song: "Hurt", wallet: 5},
      {name: "Alan", fav_song: "Blue", wallet: 100}
      ])

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

    def test_add_guest
      @karaokebar.add_guest(@guest1)
      @karaokebar.add_guest(@guest2)
      assert_equal(3, @karaokebar.add_guest(@guest3))
    end

    def test_remove_guest
      @karaokebar.add_guest(@guest1[0])
      @karaokebar.add_guest(@guest2[0])
      assert_equal(1, @karaokebar.remove_guest(@guest2[0]))
    end

  end
