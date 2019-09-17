require('minitest/autorun')
require('minitest/rg')
require_relative('../River')
require_relative('../Fish')
require_relative('../Bear')

class BearTest < MiniTest::Test

  def setup()
    @bear_name = Bear.new("Adams", "Grizzly")
    @river_name = River.new("Ganges", @fishs)
    @fishs = Fish.new("Janet")
  end

  def test_bear_has_name()
    assert_equal("Adams", @bear_name.name)
  end

  def test_bear_has_type()
    assert_equal("Grizzly", @bear_name.type)
  end

  def test_bear_stomach_starts_empty()
    assert_equal(0, @bear_name.stomach_count())
  end

  def test_can_add_fish_to_stomach()
    @bear_name.add_fish_to_stomach(@fishs)
    assert_equal(1, @bear_name.stomach_count())
  end



end
