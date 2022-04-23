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

# Creating categories
wallpapers = Category.create(name: "Wallpapers",   
  description: Faker::Lorem.sentence(word_count: 25) )
wallpapers.cover.attach(io: File.open("app/assets/images/categories/image2.jpg"), filename: "image2.jpg")

nature = Category.create(name: "Nature",   
  description: Faker::Lorem.sentence(word_count: 25) )
nature.cover.attach(io: File.open("app/assets/images/categories/image1.jpg"), filename: "image1.jpg")

people = Category.create(name: "People",   
  description: Faker::Lorem.sentence(word_count: 25) )
people.cover.attach(io: File.open("app/assets/images/categories/image12.jpg"), filename: "image12.jpg")

# Creating photos
purple_lake = Photo.create(title: "Purple Lake",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: nature)
purple_lake.image.attach(io: File.open("app/assets/images/photos/purple_lake.png"), filename: "purple_lake.png")

green_plant = Photo.create(title: "Green plant",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: nature)
green_plant.image.attach(io: File.open("app/assets/images/photos/green_plant.png"), filename: "green_plant.png")

lonely_bird = Photo.create(title: "Lonely bird",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: nature)
lonely_bird.image.attach(io: File.open("app/assets/images/photos/lonely_bird.png"), filename: "lonely_bird.png")

tree = Photo.create(title: "Tree",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: nature)
tree.image.attach(io: File.open("app/assets/images/photos/tree.png"), filename: "tree.png")

squirrel = Photo.create(title: "Squirrel",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: nature)
squirrel.image.attach(io: File.open("app/assets/images/photos/squirrel.png"), filename: "squirrel.png")

sky = Photo.create(title: "Sky",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: wallpapers)
sky.image.attach(io: File.open("app/assets/images/photos/sky.png"), filename: "sky.png")

canon = Photo.create(title: "Canon",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: wallpapers)
canon.image.attach(io: File.open("app/assets/images/photos/canon.png"), filename: "canon.png")

sky_2 = Photo.create(title: "Sky",
  description: Faker::Lorem.sentence(word_count: 25), 
  category: wallpapers)
sky_2.image.attach(io: File.open("app/assets/images/photos/sky_2.png"), filename: "sky_2.png")