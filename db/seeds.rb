# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all

user1 = User.create(username: "test007", password: "123qwerty")

Item.create(name: "A Duck", description: "Pink Duck", price: "2", image: Rails.root.join("app/pics/pinkDuck.jpg").open, user: user1)
Item.create(name: "A Duck", description: "Green Duck", price: "2", image: Rails.root.join("app/pics/greenDuck.jpg").open, user: user1)
Item.create(name: "A Duck", description: "Yellow Duck", price: "2", image: Rails.root.join("app/pics/yellowDuck.jpg").open, user: user1)