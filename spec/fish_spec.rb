require('minitest/autorun')
require('minitest/rg')
require_relative('../Fish')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Franky")
  end

def test_fish_has_name()
  assert_equal("Franky", @fish.name)
end

end
