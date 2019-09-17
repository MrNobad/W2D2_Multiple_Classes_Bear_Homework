require('minitest/autorun')
require('minitest/rg')
require_relative('../River')
require_relative('../Fish')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Franky")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Jaws")

    @fishs = [@fish1, @fish2, @fish3]

    @river_name = River.new("Ganges", @fishs)

  end

  def test_river_has_name()
    assert_equal("Ganges", @river_name.name)
  end

  def test_river_has_fish()
    assert_equal(3, @fishs.length)
  end

end
