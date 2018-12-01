require("minitest/rg")
require("minitest/autorun")

require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @Song1 = Songs.new({song_title: "Blue"})
    @Song2 = Songs.new({song_title: "Stairway to heaven"})
    @Song3 = Songs.new({song_title: "Chasing Cars"})
    @Song4 = Songs.new({song_title: "Hurt"})
    @Song5 = Songs.new({song_title: "Sonne"})

    @playlist = ([
      {song_title: "Blue"},
      {song_title: "Stairway to heaven"},
      {song_title: "Chasing Cars"},
      {song_title: "Hurt"},
      {song_title: "Sonne"}
      ])
    end

    def test_song_class_exists
      assert_equal(Songs, @Song1.class())
    end

    def test_song_in_playlist__true
      assert_equal(true, @Song5.song_in_playlist__true(@playlist))
    end

    def test_playlist_count
      assert_equal(5, @Song5.playlist_count(@playlist))
    end

  end
