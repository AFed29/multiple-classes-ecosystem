class Bear
  attr_reader(:name, :stomach)

  def initialize(name)
    @name = name
    @stomach = []
  end

  def number_of_fish_in_stomach()
    return @stomach.count()
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end

  def roar
    return "Roar!"
  end
end
