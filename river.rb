class River

attr_reader :name, :fish_pool

  def initialize(name, fish_pool)
    @name = name
    @fish_pool = []
  end

def river_name
  return @name
end

def count_fish
  return @fish_pool.length
end

# def lose_fish(fish)
#     @fish_pool.delete(fish)
# end

end
