class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    self.calories < 200
  end

  def delicious?
    true
  end

  attr_accessor :name
  attr_accessor :calories

end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    if self.flavor == "black licorice"
        false
    else
        true
    end
  end

  attr_accessor :flavor

end
