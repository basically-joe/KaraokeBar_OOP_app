require("minitest/rg")
require("minitest/autorun")

require_relative("../karaoke_bar")

class KaraokebarTest < MiniTest::Test

  def setup
    @karaokebar = Karaokebar.new("Karaoke Club")
  end

  def test_karaoke_class_exists
    assert_equal(Karaokebar, @karaokebar.class())
  end

end
