require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  puts spicy_foods.collect { |spicy_food| "#{spicy_food[:name]} | Heat Level: " + ( "🌶 " * spicy_food[:heat_level] ) + "\n" }
end

def get_names( spicy_foods )
  spicy_foods.map{ | spicy_food | spicy_food[ :name ] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.reject{ | spicy_food | spicy_food[ :heat_level ] < 5 }
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.select{ | spicy_food | spicy_food[ :cuisine ] == cuisine }
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  puts spicy_foods.collect { |spicy_food| "#{spicy_food[:name]} | Heat Level: " + ( "🌶 " * spicy_food[:heat_level] ) + "\n" if spicy_food[:heat_level] > 5 }
end

def average_heat_level(spicy_foods)
  spicy_foods.map{ | spicy_food | spicy_food[ :heat_level ] }.reduce( :+ ) / spicy_foods.length
end

print_spiciest_foods(spicy_foods)
# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
#binding.pry
#false