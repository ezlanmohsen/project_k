# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating Industry

Industry.destroy_all

Industry.create([
	{name: "Agriculture, forestry and fishing"},
	{name: "Mining and quarrying"},
	{name: "Manufacturing"},
	{name: "Construction"},
	{name: "Wholesale and retail"},
	{name: "Transporting and storage"},
	{name: "Accommodation and food service"},
	{name: "Information and communication"},
	{name: "Financial and insurance"},
	{name: "Administrative and support"},
	{name: "Public administration and defence"},
	{name: "Education"},
	{name: "Human health and social work"},
	{name: "Arts, entertainment and recreation"},
	{name: "Others"},
])

p "Seeded #{Industry.count} entries for Industry"

#Seeding States
State.destroy_all

State.create([
	{name: "Perlis"},
	{name: "Kedah"},
	{name: "Penang"},
	{name: "Perak"},
	{name: "Kelantan"},
	{name: "Terengganu"},
	{name: "Pahang"},
	{name: "Selangor"},
	{name: "Kuala Lumpur"},
	{name: "Negeri Sembilan"},
	{name: "Melaka"},
	{name: "Johor"},
	{name: "Sarawak"},
	{name: "Sabah"},
	{name: "Labuan"},
])

p "Seeded #{State.count} entries for state"





