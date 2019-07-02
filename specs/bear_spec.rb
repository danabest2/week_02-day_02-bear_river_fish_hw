require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('river_spec.rb')
# attr_reader :name :type

class BearTest < MiniTest::Test

  def setup()

@bear = Bear.new("Yogi", "Grizzly",[])

@fish_1 = Fish.new("Salmon")
@fish_2 = Fish.new("Trout")
@fish_3 = Fish.new("Cod")
@fish_4 = Fish.new("Tuna")
@fish_pool = [@fish_1, @fish_2, @fish_3, @fish_4]

@river = River.new("Amazon",@fish_pool)
@taken_fish = @fish_pool[0]

  end

def test_bear_name()
  assert_equal("Yogi", @bear.name())
end

def test_bear_type()
  assert_equal("Grizzly", @bear.type())
end

def test_bear_stomach_count()
  assert_equal(0,@bear.bear_stomach_count())
end

def test_bear_take_fish()
  @bear.bear_take_fish(@river, @taken_fish)
  # @river.lose_fish()
  assert_equal(1,@bear.bear_stomach_count())
end

def test_bear_roar()
  assert_equal("Roooaaarrr", @bear.bear_roar())
end

end
