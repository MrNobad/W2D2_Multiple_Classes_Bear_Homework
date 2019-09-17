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
end
