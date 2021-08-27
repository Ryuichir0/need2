# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

Mission.destroy_all

users = [
  {
    pseudo: "VickySa",
    first_name: "Vicky",
    last_name: "Salpetier",
    email: "vicky.salpetier@gmail.com",
    bio: "je suis une personne de 85 ans",
    address: "21 avenue thiers Nice",
    password: "azerty",
    phone: "0629872481"
  },
  {
    pseudo: "Marjo06",
    first_name: "Marjorie",
    last_name: "LeGuennec",
    email: "marjo.leguennec@gmail.com",
    bio: "aide-soignante voulant aider",
    address: "22 bis avenue thiers Nice",
    password: "azerty",
    phone: "0629872482"
  },
  {
    pseudo: "Toinou00",
    first_name: "Antoine",
    last_name: "Carles",
    email: "antoine.carles@gmail.com",
    bio: "handicapé moteur, souvent besoin d'aide",
    address: "gare thiers Nice",
    password: "azerty",
    phone: "0629872483"
  },
  {
    pseudo: "RoRo06",
    first_name: "Robert",
    last_name: "Tametti",
    email: "robert.tametti@gmail.com",
    bio: "Ancien boxeur à la retraite",
    address: "50 avenue de la marne Nice",
    password: "azerty",
    phone: "0629872484"
  },
  {
    pseudo: "ThomasL",
    first_name: "Thomas",
    last_name: "lebriand",
    email: "thomas.lebriand@gmail.com",
    bio: "Jeune pour aider",
    address: "21 rue de paris Nice",
    password: "azerty",
    phone: "0629872485"
  }
]

missions = [
  {
    slug: "administrative",
    description: "Besoin d'une aide pour remplir des papier administratif",
    started_ad: "2021-09-01 10:00:00",
    finished_at: "2021-09-01 12:00:00",
    address: "23 Rue d'Italie, 06000 Nice",
    user_id: 1,
    category_id: 1
  },
  {
    slug: "bricolage",
    description: "m'aider à monter une commode",
    started_ad: "2021-08-10 17:00:00",
    finished_at: "2021-09-10 17:30:00",
    address: "17 Bd Victor Hugo, 06000 Nice",
    user_id: 4,
    category_id: 2
  },
  {
    slug: "domicile",
    description: "Besoin de quelqu'un pour m'aider à faire le ménage",
    started_ad: "2021-10-20 14:00:00",
    finished_at: "2021-08-20 16:00:00",
    address: " 30 Av. Jean Médecin, 06000 Nice",
    user_id: 1,
    category_id: 3
  },
  {
    slug: "linguistique",
    description: "m'aider pour un voyage à l'étranger",
    started_ad: "2021-09-05 20:00:00",
    finished_at: "2021-09-05 22:00:00",
    address: "71 Boulevard Gorbella, 06100 Nice",
    user_id: 4,
    category_id: 4
  },
  {
    slug: "logistique",
    description: "M'aider pour déplacer un canapé",
    started_ad: "2021-08-24 09:00:00",
    finished_at: "2021-08-24 11:00:00",
    address: "5 Avenue Romain Rolland, 06100 Nice",
    user_id: 3,
    category_id: 5
  },
  {
    slug: "personne",
    description: "m'amener faire des courses au Leclerc",
    started_ad: "2021-09-05 19:00:00",
    finished_at: "2021-09-05 21:00:00",
    address: "69 Boulevard Gorbella, 06100 Nice",
    user_id: 4,
    category_id: 6
  },
  {
    slug: "scolaire",
    description: "Aider mon petit-fils avec ses devoirs",
    started_ad: "2021-08-21 14:00:00",
    finished_at: "2021-08-21 15:00:00",
    address: "5 Avevenue Desambrois, 06000 Nice",
    user_id: 3,
    category_id: 7
  },
]

helps = [
  {
    helpee_review: " Adresse correct tout c'est bien passé",
    helpee_rating: 4.5,
    helper_review: " Personne à l'heure, gentil je recommande",
    helper_rating: 5,
    user_id: 5,
    mission_id: 1
  },
  {
    helpee_review: " Très gentille personne, on c'est bien amusé",
    helpee_rating: 4.9,
    helper_review: " Personne très gentille, vraiment une bonne personne je recommande",
    helper_rating: 5,
    user_id: 2,
    mission_id: 1
  },
  {
    helpee_review: " Très gentille personne, c'était cool",
    helpee_rating: 4,
    helper_review: " Personne désagréable je ne recommande pas",
    helper_rating: 2,
    user_id: 2,
    mission_id: 1
  }
]

categories = [
  {
    name: "Aide administrative",
  },
  {
    name: "Aide au bricolage",
  },
  {
    name: "Aide à domicile",
  },
  {
    name: "Aide linguistique",
  },
  {
    name: "Aide logistique",
  },
  {
    name: "aide à la personne",
  },
  {
    name: "aide scolaire",
  }
]


increment = 1
puts "creation category"
categories.each do |category| 
  puts "category #{increment}"
  category = Category.create(
    name: category[:name]
  )
  increment += 1 
end

increment = 1
puts 'Creating 5 fake user '
users.each do |user| 
  puts "user #{increment}"
  user_create = User.create(
    pseudo: user[:pseudo],
    first_name: user[:first_name],
    last_name: user[:last_name],
    email: user[:email],
    password: user[:password],
    phone: user[:phone],
    bio: user[:bio],
    address: user[:address]
  )
  user_create.avatar.attach(io: File.open("app/assets/images/user#{increment}.jpg"), filename: "user#{increment}.jpg", content_type:'image/jpg')
  increment += 1
end
increment = 1
puts 'Creating 6 fakes missions '

missions.each do |mission| 
  puts "mission #{increment}"
  name = mission[:slug]
  mission = Mission.create(
    description: mission[:description],
    started_ad: DateTime.parse(mission[:started_ad]),
    finished_at: DateTime.parse(mission[:finished_at]),
    address: mission[:address],
    user_id: mission[:user_id],
    category_id: mission[:category_id],
  )
  increment += 1 
  mission.photo_category.attach(io: File.open("app/assets/images/category/aide_#{name}.png"), filename: "#{name}.png", content_type:'image/png')
end
puts "Missions Created"

increment = 1
helps.each do |help| 
  puts "help #{increment}"
  help = Help.create(
    helpee_review: help[:helpee_review],
    helpee_rating: help[:helpee_rating],
    helper_review: help[:helper_review],
    helper_rating: help[:helper_rating],
    user_id: help[:user_id],
    mission_id: help[:mission_id]
  )
  increment += 1 
end
puts "helps Created"
puts "all is ok"