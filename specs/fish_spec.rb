require('minitest/autorun')
require_relative('../fish')

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("Bob")
  end

  def test_get_fish_name
    assert_equal("Bob", @fish.name())
  end
end
