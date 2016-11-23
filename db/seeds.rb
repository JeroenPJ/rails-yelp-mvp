# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: "Cafe-Restaurant Amsterdam", address: "Watertorenplein 6, 1051 PA Amsterdam", phone_number: "020-6822 666", category: "belgian")
Restaurant.create(name: "De Goudfazant", address: "Aambeeldstraat 10 H 1021 KB Amsterdam", phone_number: "020-6365 170", category: "italian")
Restaurant.create(name: "The Fat Duck", address: "High Street, Bray, Berkshire, SL6 2AQ", phone_number: "+44 (0)1628 580 333", category: "french")
Restaurant.create(name: "Ikibana", address: "Av. del Paraŀlel, 148, 08015 Barcelona", phone_number: "934 24 46 48", category: "japanese")
Restaurant.create(name: "Ni Hao Stadsparkpaviljoen", address: "Paviljoenlaan 3, 9727 KE Groningen", phone_number: "+31 50 526 2071", category: "chinese")
