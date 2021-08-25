# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

genres = ["Si-Fi", "Drama", "Crime", "Mystery", "Horror", "Romantic"]

10.times do 
    Movie.create(name: Faker::Movie.title, genre: genres.sample, director: Faker::Name.name)
end

puts "Movies Seeded"

Book.destroy_all

10.times do
    Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: rand(100..1000))
end

puts "Books Seeded"

puts "Seeding Complete"
