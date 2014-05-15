class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    return true if @calories < 200
  end
  def delicious?
    return true
  end
  attr_accessor :name, :calories
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    super(flavor + " jelly bean", 5)
  end
  attr_accessor :flavor
  def delicious?
    return false if @flavor == 'licorice'
    true
  end
end
