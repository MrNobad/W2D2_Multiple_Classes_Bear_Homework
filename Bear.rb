class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []

  end

  def stomach_count()
    return @stomach.length()
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end

  def bear_roars(roar)
      return "I'm a Bear ... #{roar}"
    end
end
