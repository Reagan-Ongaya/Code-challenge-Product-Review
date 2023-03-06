class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favourite_product 
        products.order(star_rating: :desc).first
    end
    def remove_review(product)
       reviews.where(product: product).destroy_all
    end
end