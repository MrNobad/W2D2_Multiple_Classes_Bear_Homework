require('minitest/autorun')
require('minitest/rg')
require_relative('../River')
require_relative('../Fish')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Franky")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Jaws")
    @fish4 = Fish.new("Wanda")

    @fishs = [@fish1, @fish2, @fish3, @fish4]

    @river_name = River.new("Ganges", @fishs)
    # @fishs = Fish.new("Janet", "Jack", "Jill")


  end

  def test_river_has_name()
    assert_equal("Ganges", @river_name.name)
  end

  def test_river_has_fish()
    assert_equal(4, @fishs.length)
  end

  def test_river_starts_empty()
    assert_equal(0, @river_name.fish_count())
  end

# There are no fish in the river so this passes.
# Don't know how to add fish to take out?
  def test_can_remove_fish_from_river()
    @river_name.remove_fish_from_river(@fishs)
    assert_equal(0, @river_name.fish_count())
  end


end
