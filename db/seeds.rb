# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

100.times do
  city = City.create!(city_name: Faker::Address.city)  
  dogsitter = Dogsitter.create!(name: Faker::DcComics.name, city: city)
  dog = Dog.create!(name: Faker::DcComics.hero, city: city)
  stroll = Stroll.create!(date: Time.now, dogsitter: dogsitter)
  knowledge = Knowledge.create!(stroll: stroll, dog: dog)
end

