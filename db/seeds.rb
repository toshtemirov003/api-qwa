# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

20.times do
  @games = Game.new(
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform
  )
  @games.save
end


if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create!(name: 'Web Client', redirect_uri: '', scopes: '')
  end
  