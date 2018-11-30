require("minitest/rg")
require("minitest/autorun")

require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @Song = Songs.new("Joe")
  end

  # def test_guest_class_exists
  #   assert_equal(Songs, @Song.class())
  # end

end
