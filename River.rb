class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.count()
  end

  def remove_fish_from_river(fish)
    @fish.delete(fish)
  end



end
