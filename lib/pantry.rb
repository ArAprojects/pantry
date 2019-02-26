require 'pry'

  class Pantry
    attr_reader :stock
    def initialize
      @stock = Hash.new(0)
    end

    def stock_check(name)
      @stock[name]
    end

    def restock(name, amount)
      @stock[name] += amount
    end

    # def enough_ingredients_for?(recipe)
     #   if amount_required(cheese) < 2
     #     false
     # elsif amount_required(mac) < 8
     #   false
     # else true
     #   end
     # I realize this is a flawed approach for how static it is

     def enough_ingredients_for?(recipe)
       #this should assert to false when recipe.amount_required is not >=
       #  pantry.checkstock.
     end
    end
