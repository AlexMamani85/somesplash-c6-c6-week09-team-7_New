require 'faker'

puts "Destroying Photos"
Photo.destroy_all
puts "Destroying Categories"
Category.destroy_all

# puts "Creating new Categories"
# 5.times do
#   category = Category.new(
#     name: Faker::Color.color_name, 
#     description: Faker::Lorem.sentence(word_count: 25)
#   )
# 
#   if category.save
#     puts "Category created successfully"
#   else
#     puts category.errors.full_messages.join(", ")
#   end
# end
# 
# puts "Creating new Photos"
# Category.all.each do |category|
#   rand(2..5).times do
#     photo = Photo.new(
#     title: Faker::Book.title, 
#     description: Faker::Lorem.sentence(word_count: 25),
#     category_id: category.id
#   )
#     if photo.save
#       puts "Photo created successfully"
#     else
#       puts photo.errors.full_messages.join(", ")
#     end
#   end
# end

wallpapers = Category.create(name: "Wallpapers",   
  description: Faker::Lorem.sentence(word_count: 25) )
wallpapers.cover.attach(io: File.open("app/assets/images/categories/image2.jpg"), filename: "image2.jpg")

nature = Category.create(name: "Nature",   
  description: Faker::Lorem.sentence(word_count: 25) )
nature.cover.attach(io: File.open("app/assets/images/categories/image1.jpg"), filename: "image1.jpg")

people = Category.create(name: "People",   
  description: Faker::Lorem.sentence(word_count: 25) )
people.cover.attach(io: File.open("app/assets/images/categories/image12.jpg"), filename: "image12.jpg")