require('minitest/autorun')
require('minitest/rg')
require_relative('../River')
require_relative('../Fish')
require_relative('../Bear')

class BearTest < MiniTest::Test

  def setup()
    @bear_name = Bear.new("Adams", "Grizzly")
  end

  def test_bear_has_name()
    assert_equal("Adams", @bear_name.name)
  end

  def test_bear_has_type()
    assert_equal("Grizzly", @bear_name.type)
  end
end
