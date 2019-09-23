# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do 
    Product.create({
        title: Faker::Book.title,
        description: Faker::Movies::Hobbit.quote,
        unit_price: rand(1..9)*10000,
        discount: 0, 
        stock: rand(1..100),
        photo: nil, 
        last_purchased_at: Time.now,
        last_purchased_by: Faker::Book.author,
        total_purchases: rand(1..1000) ,
        
    })
end