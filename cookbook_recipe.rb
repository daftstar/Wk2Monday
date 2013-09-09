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
  attr_accessor :cookbook_title
		def initialize (cookbook_title)
			@cookbook_title = cookbook_title
			@recipes = []
		end

		def add_recipe(single_recipe)
			# Add this recipe to the cookbook
			# We have to convert the parameter being passed in as a string
			@recipes << single_recipe
		end

		def realtext_recipe
			puts "Hey, in your #{@cookbook_title.to_s}:"
			puts "Here are the recipes:"
			
			@recipes.each do |recipe| 
				puts recipe.title
			end
		end


end


class Recipes
  attr_accessor :title, :ingredients, :steps
	
		def initialize (title, ingredients, steps)
			@title = title
			@ingredients = ingredients
			@steps = steps
		end

		def real_text
			puts "You've created a #{title} with the ingredients: #{ingredients.to_s}."
			puts "Oh.. and these are the steps: #{steps}"
		end



		# This is a getter/setter method that allows us to get the value of an instance variable titles. This is eliminated by the use of attr_accessor

		# def title
		# 	@title
		# end

		# def title= (new_title)
		# 	@title=new_title
		# end


end