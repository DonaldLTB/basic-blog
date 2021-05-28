# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Article.destroy_all
User.destroy_all
puts "Clean"

puts "Seeding Users"
n = 0
10.times do
    User.create(
        first_name: Faker::Name.first_name,
        email: "#{n+=1}@#{n}.com",
        password: "123456",
        admin: false
    )
end
puts "Create admin"
User.create(
    first_name: "Admin",
    email: "#admin@admin.com",
    password: "123456",
)

puts "Seeding Articles"
users_for_seed = User.all
25.times do
    user = users_for_seed.sample
    Article.create(
        title: Faker::Book.title,
        content: Faker::Lorem.paragraph,
        public: true,
        publish_date: Faker::Date.between(from: 300.days.ago, to: Date.today),
        user_id: user.id
    )
end

puts "Finished seeding"