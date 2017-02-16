# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Circus.destroy_all
Clown.destroy_all
Car.destroy_all

circus1 = Circus.create({
  location: 'Waco, TX',
  starts_on: 'Jan 13, 2011',
  ends_on: 'Jan 15, 2011',
  num_of_tix: 5
})

circus2 = Circus.create({
  location: 'Lafeyette, LA',
  starts_on: 'Jan 20, 2011',
  ends_on: 'Jan 25, 2011',
  num_of_tix: 10
})


car1 = Car.create({
  make: 'Nissan',
  model: 'Cube',
  year: 2011,
  color: 'yellow',
  capacity: 5
})

car2 = Car.create({
  make: 'Nissan',
  model: 'Pao',
  year: 1989,
  color: 'blue',
  capacity: 4
})

car1.clowns.create({
  name: "Pennywise",
  nose_color: "red",
  circus: circus1
})

clown1 = Clown.new({
  name: "Mr Jiggles",
  nose_color: "blue"
})
clown1.circus = circus1
car2.clowns.push(clown1)

clown2 = Clown.new({
  name: "Chuckles",
  nose_color: "blue"
})

clown2.car = car1
clown2.circus = circus2
clown2.save
