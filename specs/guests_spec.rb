require("minitest/rg")
require("minitest/autorun")

require_relative("../guests")
require_relative("../songs")


class GuestsTest < MiniTest::Test

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
    end

    def test_guest_class_exists
      assert_equal(Guests, @guest1.class())
    end

    def test_remove_money_from_wallet
      assert_equal(20, @guest1.remove_money_from_wallet(@entry_fee))
    end

    def test_guest_count
      assert_equal(5, @guest1.guest_count(@mutlitple_guests))
    end

  end
