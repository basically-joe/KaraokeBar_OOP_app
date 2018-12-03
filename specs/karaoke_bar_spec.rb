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
    @guest4 = Guests.new({name: "Sam", fav_song: "Hurt", wallet: 0})
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

        @karaokebar = Karaokebar.new("Karaoke Club", 5)
        @karaokebar1 = Karaokebar.new("Silent disco", 5)
      end

      def test_karaoke_class_exists
        assert_equal(Karaokebar, @karaokebar.class())
      end

      def test_count_guests_in_room
        assert_equal(0, @karaokebar.count_guests_in_room())
      end

      def test_add_guest_to_room
        assert_equal(1, @karaokebar.add_guest_to_room(@guest2))
      end

      def test_remove_guest_from_room
        @karaokebar.add_guest_to_room(@guest1)
        @karaokebar.add_guest_to_room(@guest4)
        assert_equal(1, @karaokebar.remove_guest_from_room())
      end

      def test_add_song_to_room_playlist
        assert_equal(1, @karaokebar.add_song_to_room_playlist(@Song1))
      end

      def test_remove_song_from_room_playlist
        @karaokebar.add_song_to_room_playlist(@Song1)
        @karaokebar.add_song_to_room_playlist(@Song2)
        assert_equal(1, @karaokebar.remove_song_from_room_playlist())
      end

      def test_room_capacity
        assert_equal(5, @karaokebar.room_capacity())
      end

      def test_room_has_reached_capacity
        @karaokebar.add_guest_to_room(@guest1)
        @karaokebar.add_guest_to_room(@guest2)
        @karaokebar.add_guest_to_room(@guest3)
        @karaokebar.add_guest_to_room(@guest4)
        @karaokebar.add_guest_to_room(@guest5)
        assert_equal(true, @karaokebar.room_has_reached_capacity())
      end

      def test_guest_trying_to_enter__room_at_capacity
        @karaokebar.add_guest_to_room(@guest1)
        @karaokebar.add_guest_to_room(@guest2)
        @karaokebar.add_guest_to_room(@guest3)
        @karaokebar.add_guest_to_room(@guest4)
        @karaokebar.add_guest_to_room(@guest5)
        assert_equal(5, @karaokebar.guest_trying_to_enter__room_at_capacity(@guest6))
      end

      def test_guest_trying_to_enter__room_below_capacity
        @karaokebar.add_guest_to_room(@guest1)
        @karaokebar.add_guest_to_room(@guest2)
        @karaokebar.add_guest_to_room(@guest3)
        assert_equal(4, @karaokebar.guest_trying_to_enter__room_at_capacity(@guest6))
      end

      def test_customer_entering__enough_money
        @karaokebar.add_guest_to_room(@guest1)
        @karaokebar.add_guest_to_room(@guest2)
        assert_equal(3, @karaokebar.customer_entering__enough_money(@guest6))
      end

    end
