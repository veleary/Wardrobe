# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# If you want to destroy before seeding add uncomment below code.
# WardrobeItem.destroy_all

Items = [
  {
    garment: 'shirt',
    label: 'Banana Republic',
    season: 'Fall',
    color: 'Blue'
  },
  {
    garment: 'pants',
    label: 'Express',
    season: 'All',
    color: 'khaki'
  }
]

Items.each do |item|
  WardrobeItem.create(garment: item[:garment], label: item[:label], season: item[:season], color: item[:color])
end
