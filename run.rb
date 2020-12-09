require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |spicy_food|
    print "#{spicy_food[:name]} | Heat Level: " 
    spicy_food[:heat_level].times { print "🌶 " }
    puts
  end
end

def get_names( spicy_foods )
  result = []
  spicy_foods.each do | spicy_food |
    result << spicy_food[ :name ]
  end
  result
end

def spiciest_foods(spicy_foods)
  spicy_foods.each do |spicy_food|
    spicy_foods.delete(spicy_food) if spicy_food[:heat_level] < 5
  end
  spicy_foods
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.each do | spicy_food |
    return spicy_food if spicy_food[ :cuisine ] == cuisine
  end
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  spicy_foods.each do |spicy_food|
    if spicy_food[:heat_level] > 5
      print "#{spicy_food[:name]} | Heat Level: " 
      spicy_food[:heat_level].times { print "🌶 " }
      puts
    end
  end
end

def average_heat_level(spicy_foods)
  total = 0
  spicy_foods.each do |spicy_food|
    total += spicy_food[:heat_level]
  end
  total / spicy_foods.length
end

puts average_heat_level(spicy_foods)

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
#binding.pry
#"pls"