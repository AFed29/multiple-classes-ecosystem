require('minitest/autorun')
require_relative('../bear')
require_relative('../fish')

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi")

    @fish1 = Fish.new("Jake")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name())
  end

  def test_number_of_fish_in_stomach
    assert_equal(0, @bear.number_of_fish_in_stomach())
  end

  def test_add_fish_to_stomach
    @bear.add_fish_to_stomach(@fish1)
    assert_equal(1, @bear.number_of_fish_in_stomach())
  end

  def test_bear_roar
    assert_equal("Roar!", @bear.roar())
  end


end
