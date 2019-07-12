# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
place1 = Place.find_or_create_by(name: 'CANES CLUB HOUSE', adress: 'Vereda Parcelas de Cota - Globo 2 Finca 24', owner: 'canesclubhouse', schedule: 'L-D, 9:00am-7:00pm', kind: 'Hotel', number: 3157773348)
puts 'Seeds created'
