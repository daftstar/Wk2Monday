#This library contains the classes Cookbook & Recipe


# def initalize (*something <--- * indicates to expect an array)
# class Cookbook
#   attr_accessor :something :something2
# 	def initialize (something, *something)
# 		@something = something
# 		@something2 = something
# 	end
# end


# class Recipe
#   attr_accessor :something :something2
# 	def initialize
# 		@something = something
# 		@something2 = something
# 	end
# end



class Cookbook
  attr_accessor :recipe
		def initialize (recipes = nil)
			@recipes = recipes
		end

		def add_recipe(single_recipe)
			# Add this recipe to the cookbook
			# We have to convert the parameter being passed in as a string
			@recipes << single_recipe.to_s
		end
end


class Recipes
  attr_accessor :title
  attr_accessor :ingredients
  attr_accessor :steps
	
		def initialize (title, ingredients, steps)
			@title = title
			@ingredients = ingredients
			@steps = steps
		end
end