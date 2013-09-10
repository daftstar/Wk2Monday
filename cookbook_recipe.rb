#This library contains the classes Cookbook & Recipe


# def initalize (*something <--- * indicates to expect an array)
# class Cookbook
#   attr_accessor :something :something2
# 	def initialize (something, *something)
# 		@something = something
# 		@something2 = something
# 	end
# end

class Cookbook
  attr_accessor :cookbook_title, :recipe_count
		def initialize (cookbook_title)
			@cookbook_title = cookbook_title
			@recipes = []
			@recipe_count = 0
		end

		def add_recipe(single_recipe)
			# Add this recipe to the cookbook
			# We have to convert the parameter being passed in as a string
			@recipes << single_recipe
			@recipe_count +=1
		end


		def display_recipe_count
			puts "There are a total of #{@recipe_count} recipes in this cookbook."
		end


		def realtext_recipe
			puts "------------- RECIPE LISTING ---------------"
			puts "In your cookbook '#{@cookbook_title.to_s}', you have the following recipes:"
			
			@recipes.each do |recipe| 
				puts "- " + recipe.title
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
			puts "You've created a #{title} with the ingredients: #{ingredients.join(', ')}."
			puts "There are #{ingredients.count.to_s} ingredients in this recipe."
			puts "There are #{steps.count.to_s} steps in this recipe." 
			puts "These are the steps: #{steps.join(', ')}"
			puts ""
		end



		# This is a getter/setter method that allows us to get the value of an instance variable titles. This is eliminated by the use of attr_accessor

		# def title
		# 	@title
		# end

		# def title= (new_title)
		# 	@title=new_title
		# end


end