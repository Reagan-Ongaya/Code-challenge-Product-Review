puts "🌱 Seeding data..."

#creating 10 sampled product
10.times do
    Product.create(
        name: Jake::Commerce.product_name
    )
end

#creating 10 sampled users
10.times do
    User.create(
        name: Jake::Name.name
    )
end

#creating 10  sampled revies
10.times do
    Review.create(
        star_rating: rand(0..5),
        comment: Jake::Sixty.sentence,
        user_id: rand(1..2),
        product_id: rand(1..3)
    )
end

puts "🌱 Done seeding!"
