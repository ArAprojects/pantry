

class Recipe
  attr_reader :name, :ingredients_required, :ingredients_included
  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients_included = []
  end

  def add_ingredient(name, amount)
    @ingredients_required[name] = amount
  end

  def amount_required(name)
    @ingredients_required[name]
  end

  def ingredients
    @ingredients_required.keys.each { |ingredient| @ingredients_included << ingredient }
  end

  def total_calories
    calories = ingredients.map { |ing| ing.calories }
    total = (calories[0] * ingredients_required.values[0]) + calories[1] * ingredients_required.values[1]
  end
end
