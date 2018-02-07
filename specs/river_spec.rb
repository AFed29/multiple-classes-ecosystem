require('minitest/autorun')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')

class RiverTest < MiniTest::Test
  def setup
    @fish1 = Fish.new("Bob")
    @fish2 = Fish.new("Alan")
    @fish3 = Fish.new("Steven")

    @bear1 = Bear.new("Yogi")
    @bear2 = Bear.new("Paddington")

    @river = River.new("Amazon", [@bear1], [@fish1, @fish2])
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_add_bear_to_river
    @river.add_bear_to_river(@bear2)
    assert_equal(2, @river.bears().count())
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish3)
    assert_equal(3, @river.fish().count())
  end

  def test_bear_taking_fish_from_river
    @river.bear_taking_fish_from_river(@bear1, @fish1)
    assert_equal(1, @river.number_of_fish())
    assert_equal(1, @bear1.number_of_fish_in_stomach())
  end

  def test_bear_cannot_take_fish_from_empty_river
    river = River.new("Dee", [@bear1], [])
    river.bear_taking_fish_from_river(@bear1, nil)
    assert_equal(0, river.number_of_fish())
    assert_equal(0, @bear1.number_of_fish_in_stomach())
  end

  def test_number_of_fish_in_river
    assert_equal(2, @river.number_of_fish())
  end

end
