class River
  attr_reader(:name, :bears, :fish)

  def initialize(name, bears = [], fish = [])
    @name = name
    @bears = bears
    @fish = fish
  end

  def add_bear_to_river(bear)
    @bears.push(bear)
  end

  def add_fish_to_river(fish)
    @fish.push(fish)
  end

  def bear_taking_fish_from_river(bear_eating, eaten_fish)
    for bear in @bears
      if bear == bear_eating
        bear.add_fish_to_stomach(eaten_fish)
      end
    end
    @fish.delete_if { |fish| fish == eaten_fish }
  end

end
