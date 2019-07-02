class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = []
  end

def bear_name
  return @name
end


def bear_type
  return @type
end

def bear_stomach_count
  return @stomach.length
end


def bear_take_fish(river,fish)
  @stomach.push(fish)
  # river.lose_fish(fish)
end

def bear_roar
  return "Roooaaarrr"
end


end
