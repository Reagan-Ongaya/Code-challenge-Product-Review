ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

# Returns the User instance for this Review
puts Review.first.user.name

# Returns the Product instance for this Review
puts Review.first.product

# # Returns a collection of all the Reviews for the Product
puts Product.first.reviews

# # Returns a collection of all the Users who reviewed the Product
puts Product.first.users

# # Returns a collection of all the Reviews that the User has given
 puts User.first.reviews

# # Return of User  reviewed product collection
puts User.first.products


 review = Review.first

 product = Product.first
 user = User.first

 product.leave_review(user, 1, "Great products")
 product.leave_review(user, 2, "Best products.")
 product.leave_review(user, 3, "Good products")
 product.leave_review(user, 4, "Products need improvement!")

 product.print_all_reviews

 puts "Average rating: #{product.average_rating}"

