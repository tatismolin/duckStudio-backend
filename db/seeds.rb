# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserItem.destroy_all
Item.destroy_all
User.destroy_all

user1 = User.create(username: "duck007", password: "123qwerty!")

Item.create(name: "Yellow Duck", description: "This Yellow rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/ys85kBy/c-yellow-duck.jpg")
Item.create(name: "Special Edition Red Duck", description: "This Special Edition Red rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/qDVj0D1/c-red-duck.jpg")
Item.create(name: "Tatiana's Favorite Black Duck", description: "This Tatiana's Favorite Black rubber Duck is the best duck you could ever dream of. It is luxuary, special and smells like daisy.", price: "99.99", image: "https://i.ibb.co/xCKm8kb/b-black-duck.jpg")
Item.create(name: "Special Edition Orange Duck", description: "This Special Edition Orange rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/DDgF1vP/c-orange-duck.jpg")
Item.create(name: "Malina Russian Duck", description: "This Malina Russian rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you when you go to Russia and 'Privet! Vodka! Na Zdorovie!'", price: "99.99", image: "https://i.ibb.co/KXZmBBq/c-malina-duck.jpg")
Item.create(name: "Special Edition Green Duck", description: "This Special Edition Green rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/264Bm4b/c-lightgreen-duck.jpg")
Item.create(name: "Turquoise Duck", description: "This Turquoise rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/DYWkZMF/c-green-duck.jpg")
Item.create(name: "Weird Blue Duck", description: "This Weird Blue rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/YWFyBVM/c-blue-duck.jpg")
Item.create(name: "Dark Pink Duck", description: "This Dark Pink rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/R014vzW/b-purple-duck.jpg")
Item.create(name: "Lime Green Duck", description: "This Light Green rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/m0SfS0L/a-green-duck.jpg")
Item.create(name: "Light Gray Duck", description: "This Light Purple rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/4JrZZpr/b-lightpurple-duck.jpg")
Item.create(name: "Weird Green Duck", description: "This Weird Green rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/JjB2Hs4/b-weirdgreen-duck.jpg")
Item.create(name: "Special Edition Purple Duck", description: "This Special Editon Purple rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/rbmfv0B/c-purple-duck.jpg")
Item.create(name: "Aqua Duck", description: "This Aqua rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/g7nR3p9/a-aqua-duck.jpg")
Item.create(name: "Light Green Duck", description: "This Lime Green rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/c6x4TRq/b-green-duck.jpg")
Item.create(name: "Dark Green Duck", description: "This Dark Green rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/PwzHCt0/b-darkgreen-duck.jpg")
Item.create(name: "Light Blue Duck", description: "This Light Blue rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/4mD6hdN/b-blue-duck.jpg")
Item.create(name: "Limited Edition Black Duck", description: "This Limited Edition Black rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/3zMFpPc/a-black-duck.jpg")
Item.create(name: "Special Edition Blue Duck", description: "This Special Edition Blue rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/Lhh7yHG/c-laightblue-duck.jpg")
Item.create(name: "Classic Boring Yellow Duck", description: "This Classic Boring Yellow rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/fHtznD5/a-yellow-duck.jpg")
Item.create(name: "Very Orange Duck", description: "This Red rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/0Mqv3nK/a-red-duck.jpg")
Item.create(name: "Dark Purple Duck", description: "This Dark Purple rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/YThm99X/a-purple-duck.jpg")
Item.create(name: "Orange Duck", description: "This Orange rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/8gJXNPQ/a-orange-duck.jpg")
Item.create(name: "Dark Blue Duck", description: "This Dark Blue rubber Duck is a perfect companion for code debugging, selfies or bath taking.
Take it with you wherever you go and have fun!", price: "99.99", image: "https://i.ibb.co/1sVrDP7/a-blue-duck.jpg")