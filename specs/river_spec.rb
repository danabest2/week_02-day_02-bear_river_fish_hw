require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

# attr_reader :

class RiverTest < MiniTest::Test

  def setup()

    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Trout")
    @fish_3 = Fish.new("Cod")
    @fish_4 = Fish.new("Tuna")
    @fish_pool = [@fish_1, @fish_2, @fish_3, @fish_4]

    @river = River.new("Amazon",@fish_pool)
end

def test_river_name()
  assert_equal("Amazon",@river.name())
end

def test_count_fish()
  assert_equal(4,@fish_pool.length)
end

# def test_lose_fish(fish)
#     @river.lose_fish(@fish_1)
#     assert_equal("[@fish_2, @fish_3, @fish_4]",@river.fish_pool)
# end

end
