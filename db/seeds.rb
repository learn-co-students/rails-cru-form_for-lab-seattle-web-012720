# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create('name': "Beyonce", 'bio': "The QUeen")
Artist.create(name:"Billy Joel", bio:"The piano man")

Genre.create(name: "pop")
Genre.create(name: "oldies")

Song.create(name:'Irreplaceable', artist_id:1, genre_id:1)
Song.create(name:"Pianooo", artist_id:2, genre_id:2)