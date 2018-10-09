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

# Seeding Jobseekers

Jobseeker.destroy_all

jobseeker = {}

ActiveRecord::Base.transaction do
  10.times do 
    jobseeker['name'] = Faker::Name.name  
    jobseeker['email'] = Faker::Internet.email
    jobseeker['degree'] = ["Computer Science", "Software Engineering", "Accounting & Finance", "Banking & Finance", "Economics", "Business Management", "Engineering", "Marketing Communications", "Hospitality Management", "Multimedia Design", "Law", "Politics"].sample
    jobseeker['university'] = ["Universiti Malaya", "Universiti Kebangsaan Malaysia", "Universiti Putra Malaysia", "Universiti Sains Malaysia", "Universiti Teknologi Malaysia", "Universiti Teknologi Petronas", "Lim Kok Wing university", "Taylor's University", "Help University", ""].sample
    jobseeker['cgpa'] = [2.01, 2.50, 3.00, 3.50, 3.61, 3.75, 3.83, 3.91].sample
    jobseeker['location'] = ["Kuala Lumpur", "Selangor", "Penang", "Sarawak", "Sabah"].sample
    jobseeker['pref_size'] = ["Small", "Big"].sample
    jobseeker['pref_hours'] = ["Traditional", "Modern"].sample
    jobseeker['we1'] = ["Manufacturing", "Financial and insurance", "Public administration and defence", "Human health and social work", "Agriculture, forestry and fishing", "Education", "Information and communication", "Arts, entertainment and recreation"].sample
    jobseeker['we2'] = ["Manufacturing", "Financial and insurance", "Public administration and defence", "Human health and social work", "Agriculture, forestry and fishing", "Education", "Information and communication", "Arts, entertainment and recreation"].sample
    jobseeker['we3'] = ["Manufacturing", "Financial and insurance", "Public administration and defence", "Human health and social work", "Agriculture, forestry and fishing", "Education", "Information and communication", "Arts, entertainment and recreation"].sample
    jobseeker['knowledge_score'] = Faker::Number.between(30, 100)
    jobseeker['skill_score'] = Faker::Number.between(30, 100)
    jobseeker['activity_score'] = Faker::Number.between(30, 100)
    jobseeker['knowledge1'] = ["Arts & Culture", "Business & Finance", "Basic Sciences", "Economics", "Government & Politics", "Information Technology", "Sports & Recreation", "Media", "Education", "Entrepreneurship"].sample
    jobseeker['knowledge2'] = ["Arts & Culture", "Business & Finance", "Basic Sciences", "Economics", "Government & Politics", "Information Technology", "Sports & Recreation", "Media", "Education", "Entrepreneurship"].sample
    jobseeker['knowledge3'] = ["Arts & Culture", "Business & Finance", "Basic Sciences", "Economics", "Government & Politics", "Information Technology", "Sports & Recreation", "Media", "Education", "Entrepreneurship"].sample
    jobseeker['skill1'] = ["Writing", "Programming", "Marketing", "Communications", "Researching", "Project Management", "Analytics", "Inventing" ].sample
    jobseeker['skill2'] = ["Writing", "Programming", "Marketing", "Communications", "Researching", "Project Management", "Analytics", "Inventing" ].sample
    jobseeker['skill3'] = ["Writing", "Programming", "Marketing", "Communications", "Researching", "Project Management", "Analytics", "Inventing" ].sample
    jobseeker['activity1'] = ["Volunteering", "Sports", "Debating", "Student Association", "Travelling", "Entrepreneurship", "Civil Activism"].sample
    jobseeker['activity2'] = ["Volunteering", "Sports", "Debating", "Student Association", "Travelling", "Entrepreneurship", "Civil Activism"].sample
    jobseeker['activity3'] = ["Volunteering", "Sports", "Debating", "Student Association", "Travelling", "Entrepreneurship", "Civil Activism"].sample
    Jobseeker.create(jobseeker)
  end
end 

p "Seeded #{Jobseeker.count} entries for Point"


