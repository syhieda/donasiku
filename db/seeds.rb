# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Create a new user
User.create(
  email: "admin@edu.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin",
  role: "admin"
)

# Create a new campaign
10.times do
  Campaign.create(
    title: Faker::Marketing.buzzwords,
    picture: Faker::Placeholdit.image(size: "50x50"),
    content: Faker::Lorem.paragraph(sentence_count: 10),
    total: Faker::Number.between(from: 1_000_000, to: 5_000_000),
    target: Faker::Number.between(from: 100_000_000, to: 500_000_000),
    close_at: Faker::Date.forward(days: 360)
  )
end