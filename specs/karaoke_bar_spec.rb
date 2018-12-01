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
    @guest6 = Guests.new({name: "Steven", fav_song: "Promises", wallet: 100})

    @mutlitple_guests__room = ([
      {name: "Joe", fav_song: "Sonne", wallet: 30},
      {name: "Jodie", fav_song: "Chasing Cars", wallet: 40},
      {name: "Kim", fav_song: "Stairway to heaven", wallet: 50},
      {name: "Sam", fav_song: "Hurt", wallet: 0},
      {name: "Alan", fav_song: "Blue", wallet: 100}
      ])

      @entry_fee = 10

      @Song1 = Songs.new({song_title: "Blue"})
      @Song2 = Songs.new({song_title: "Stairway to heaven"})
      @Song3 = Songs.new({song_title: "Chasing Cars"})
      @Song4 = Songs.new({song_title: "Hurt"})
      @Song5 = Songs.new({song_title: "Sonne"})
      @Song6 = Songs.new({song_title: "Bohemian Rhapsody"})

      @playlist = ([
        {song_title: "Blue"},
        {song_title: "Stairway to heaven"},
        {song_title: "Chasing Cars"},
        {song_title: "Hurt"},
        {song_title: "Sonne"}
        ])

        @karaokebar = Karaokebar.new("Karaoke Club", 6)
        @karaokebar1 = Karaokebar.new("Silent disco", 5)
      end

      def test_karaoke_class_exists
        assert_equal(Karaokebar, @karaokebar.class())
      end

      def test_add_guest
        assert_equal(6, @karaokebar.add_guest(@mutlitple_guests__room, @guest3))
      end

      def test_remove_guest__no_money
        assert_equal(4, @karaokebar.remove_guest__no_money(@mutlitple_guests__room))
      end

      def test_add_song_to_room
        assert_equal(6, @karaokebar.add_song_to_room(@playlist, @Song6))
      end

      def test_room_capacity
        assert_equal(6, @karaokebar.room_capacity())
      end

      def test_room_has_capacity
        assert_equal(6, @karaokebar.room_has_capacity(@mutlitple_guests__room, @guest6))
      end

      def test_customer_fav_song__wooh
        assert_equal("Wooh", @karaokebar.customer_fav_song__wooh(@playlist, @guest1))
      end

    end
