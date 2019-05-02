# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(name:"Justin")
u2 = User.create(name:"pp")
d1 = Dragon.create(name:"sparky", age:2000, user_id:1)
d2 = Dragon.create(name:"spot", age:3000, user_id:2)
d1 = Dragon.create(name:"minh", age:2800, user_id:1)
