# We're going to quickly implement a simple Cookbook that can hold Recipes 
# and has instance variables, initialize methods, attr_accessors and interaction between classes. 

load './cookbook_recipe.rb'






# Cookbook.new is calling on the initialize method.  Likely, the Class looks like this
# class Burrito
  # attr_accessors :title
  #   def initialize
  #   	@title = title
  #   end

mex_cuisine = Cookbook.new("Mexican Cuisine")

burrito = Recipes.new("Bean and Cheese Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"])

chips_n_salsa = Recipes.new(
	"Chips and Salsa", ["tortilla chips", "Salsa"], ["place chips in bowl", "pour salsa over"])

puts "#{burrito.to_s}"
puts chips_n_salsa

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(chips_n_salsa)