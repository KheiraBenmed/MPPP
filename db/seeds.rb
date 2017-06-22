# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'On détruit la base de données'
# Restaurant.destroy_all
# Review.destroy_all
# Booking.destroy_all
require 'open-uri'

puts 'On récupere les restaurants sur fooding'

store = []
for i in (0...5) do
html_doc = Nokogiri::HTML(open("https://lefooding.com/fr/restaurants?filters%5Bgeo%5D%5Bcity%5D%5B%5D=526ba3f07f55b7f39a007e28&facets%5Bessentials%5D%5B%5D=526dac727f55b742d5002051&page=#{i}"), nil, 'UTF-8')
p html_doc.search('.result-infos')
html_doc.search('.results .results-list .results-item .result-infos .result-info.address').each do |info|
  restaurant = {}
  restaurant[:name] = info.search('.result-title a').first.text
  restaurant[:address] = info.search('.street-name').text
  restaurant[:city] = info.search('.city').text
  restaurant[:phone] = info.search('.phone').text
  restaurant[:chef] = "Franck B"
  restaurant[:rating] = rand(6)
  store << restaurant
  end
end

  store.each do |restaurant|
  Restaurant.create(restaurant)
end
puts "#{store.length} restaurant(s) "

