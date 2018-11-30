require("minitest/rg")
require("minitest/autorun")

require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @Song1 = Songs.new("Blue")
    @Song2 = Songs.new("Stairway to heaven")
    @Song3 = Songs.new("Chasing Cars")
    @Song4 = Songs.new("Hurt")
    @Song5 = Songs.new("Sonne")
  end

  def test_song_class_exists
    assert_equal(Songs, @Song1.class())
  end

  def test_add_song_to_playlist
    assert_equal(1, @Song1.add_song_to_playlist(@Song1))
  end

end
