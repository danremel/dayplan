# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Task.destroy_all

Task.create({ title: "Do the dishes", description: "Wash the plates and silverware", priority_level: 2, completion_time: '13:00:00', completed: false })
Task.create({ title: "Walk the dogs", description: "Make sure they do their business, and clean up after them!", priority_level: 3, completion_time: '17:00:00', completed: false })