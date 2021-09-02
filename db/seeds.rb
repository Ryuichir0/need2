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


Category.destroy_all
Help.destroy_all
Mission.destroy_all
User.destroy_all


users = [
  {
    pseudo: "VickySa",
    first_name: "victoria",
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
    bio: "handicapé moteur depuis quelque année,
     il m'arrive d'avoir souvent besoin d'un coup de pouce dans certain domaine",
    address: "gare thiers Nice",
    password: "azerty",
    phone: "0629872483"
  },
  {
    pseudo: "RoRo06",
    first_name: "Robert",
    last_name: "Tametti",
    email: "robert.tametti@gmail.com",
    bio: "Ancien boxeur à la retraite, je cherche à aider les personnes dans le besoin,
    mais aussi à m'aider sur certain domaine",
    address: "50 avenue de la marne Nice",
    password: "azerty",
    phone: "0629872484"
  },
  {
    pseudo: "SylvieL",
    first_name: "Sylvie",
    last_name: "Topita",
    email: "sylvie.topita@gmail.com",
    bio: "Bonjour je suis une mère au foyer de 40 ans avec 3 enfants en bas âges",
    address: "21 rue de paris Nice",
    password: "azerty",
    phone: "0629872485"
  },
  {
    pseudo: "Aurel",
    first_name: "Aurelien",
    last_name: "Canonne",
    email: "aurelien.canonne@gmail.com",
    bio: "Bonjour je m'appelle Aurelien, en 2014 je me suis fait mal au dos suite à un acccident de voiture,
    de nombreux site afin de pouvoir trouver une aide ponctuel en cas de besoin",
    address: "21bis rue de paris 06000 Nice",
    password: "azerty",
    phone: "06 45 35 26 43"
  },
  {
    pseudo: "tibo54",
    first_name: "Tibo",
    last_name: "Dupont",
    email: "tibo.dupont@gmail.com",
    bio: "Jeune retraité, en fauteuil roulant depuis 3 ans, je cherche de temps en temps de l'aide pour certaine tache",
    address: "28 avenue notre dame Nice",
    password: "azerty",
    phone: "0629872486"
  }
]

missions = [
  {
    slug: "administrative",
    description: "Etant seule à la maison,
     Je cherche quelqu'un qui puisse m'aider à faire avec moi ma demande d'avis d'imposition ",
    started_ad: "2021-09-01 10:00:00",
    finished_at: "2021-09-01 12:00:00",
    address: "23 Rue d'Italie, 06000 Nice",
    user_id: 1,
    category_id: 1
  },
  {
    slug: "administrative",
    description: "A la retraite depuis maintenant quelque année, je cherche quelqu'un qui puisse m'aider a faire,
    le tri dans mes papiers administratif",
    started_ad: "2021-09-05 10:00:00",
    finished_at: "2021-09-05 12:00:00",
    address: "50 Rue d'Italie, 06000 Nice",
    user_id: 2,
    category_id: 1
  },
  {
    slug: "administrative",
    description: "Je cherche quelqu'un ayant une bonne connaissance en informatique,
    pour m'aider à remplir ma demande de retraite en ligne",
    started_ad: "2021-09-12 09:00:00",
    finished_at: "2021-09-12 12:00:00",
    address: "50 avenue de la marne, 06100 Nice",
    user_id: 3,
    category_id: 1
  },
  {
    slug: "bricolage",
    description: "Ayant mal au dos je ne peux pas monter moi-même mon étagère,
    je cherche quelqu'un qui puisse m'aider ",
    started_ad: "2021-08-10 17:00:00",
    finished_at: "2021-09-10 17:30:00",
    address: "17 Bd Victor Hugo, 06000 Nice",
    user_id: 2,
    category_id: 2
  },
  {
    slug: "bricolage",
    description: "Bonjour je cherche quelqu'un pour m'aider à réparer ma plomberie ",
    started_ad: "2021-08-10 17:00:00",
    finished_at: "2021-09-10 18:30:00",
    address: "17 rue Jean medecin, 06000 Nice",
    user_id: 7,
    category_id: 2
  },
  {
    slug: "domicile",
    description: "Personne de 65 ans, je cherche quelqu'un pour m'aider à faire le ménage chez moi,
     mes douleurs aux jambes ne me permette pas de le faire correctement et totalement ",
    started_ad: "2021-10-20 14:00:00",
    finished_at: "2021-08-20 16:00:00",
    address: " 30 Av. Jean Médecin, 06000 Nice",
    user_id: 1,
    category_id: 3
  },
  {
    slug: "domicile",
    description: "Bonjour, je cherche quelqu'un pour remplacer mon aide à domicile qui devras s'absenter pour une journée, ",
    started_ad: "2021-10-20 14:00:00",
    finished_at: "2021-08-20 16:00:00",
    address: " 10 rue Verdi, 06000 Nice",
    user_id: 1,
    category_id: 3
  },
  {
    slug: "linguistique",
    description: "Je pars rejoindre ma famille au USA, et je cherche quelqu'un de gentil et avec un bon niveau d'anglais,
    qui puisse m'aider à traduire et remplir avec moi ma demande de visa ",
    started_ad: "2021-09-05 20:00:00",
    finished_at: "2021-09-05 22:00:00",
    address: "71 Bd Gorbella, 06100 Nice",
    user_id: 3,
    category_id: 4
  },
  {
    slug: "linguistique",
    description: " je cherche quelqu'un parlant très bien japonais pour m'aider à remplir certain papier,
    pour mon petit-fils qui vit la-bas",
    started_ad: "2021-09-07 14:00:00",
    finished_at: "2021-09-07 16:00:00",
    address: "34 bd gorbella, 06000 Nice",
    user_id: 7,
    category_id: 4
  },
  {
    slug: "logistique",
    description: "je cherche une âme charitable afin de pouvoir m'aider à déplacer un canapé,
    ayant de grosse douleur au dos je ne peux pas le porter tout seul",
    started_ad: "2021-08-18 09:00:00",
    finished_at: "2021-08-18 11:00:00",
    address: "5 Av Romain Rolland, 06100 Nice",
    user_id: 1,
    category_id: 5
  },
  {
    slug: "logistique",
    description: "Bonjour je viens d'acheter un canapé malheureusement,
    je dois trouver quelqu'un pour m'aider à mettre l'ancien au encombrant",
    started_ad: "2021-09-15 09:00:00",
    finished_at: "2021-08-15 11:00:00",
    address: "5 Rue Grimaldi, 06000 Nice",
    user_id: 3,
    category_id: 5
  },
  {
    slug: "personne",
    description: "Personne agée, je cherche quelqu'un qui puisse m'amener au supermarché,
    faire mes courses n'ayant plus la possibilité de conduire actuellement",
    started_ad: "2021-09-05 19:00:00",
    finished_at: "2021-09-05 21:00:00",
    address: "69 Bld Gorbella, 06100 Nice",
    user_id: 2,
    category_id: 6
  },
  {
    slug: "personne",
    description: "Bonjour je suis à la recherche d'une ame charitable qui puisse m'emmener à la messe le dimanche qui arrive ",
    started_ad: "2021-09-05 19:00:00",
    finished_at: "2021-09-05 21:00:00",
    address: "73 Bld dubouchage, 06000 Nice",
    user_id: 5,
    category_id: 6
  },
  {
    slug: "scolaire",
    description: "Ayant quitté l'école très tôt,
     je cherche quelqu'un qui puisse aider mon fils à faire ses devoirs de 4 ème",
    started_ad: "2021-08-21 14:00:00",
    finished_at: "2021-08-21 15:00:00",
    address: "5 Av Desambrois, 06000 Nice",
    user_id: 3,
    category_id: 7
  },
  {
    slug: "scolaire",
    description: "Bonjour je suis à la recherche d'une personne très forte en math qui puisse aider ma fille pour la remettre au niveau  ",
    started_ad: "2021-09-21 14:00:00",
    finished_at: "2021-09-21 15:00:00",
    address: "25 Av Desambrois, 06000 Nice",
    user_id: 5,
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
  },
  {
    helpee_review: " Très bonne journée passé en compagnie de vicky",
    helpee_rating: 3,
    helper_review: " Personne désagréable je ne recommande pas",
    helper_rating: 2,
    user_id: 2,
    mission_id: 3
  }
]

categories = [
  {
    name: "Administration",
  },
  {
    name: "Bricolage",
  },
  {
    name: "Aide à domicile",
  },
  {
    name: "Linguistique",
  },
  {
    name: "Logistique",
  },
  {
    name: "Aide à la personne",
  },
  {
    name: "Soutien scolaire",
  }
]


increment = 1
puts "creation category"
category_list = []
categories.each do |category|
  puts "category #{increment}"
  category = Category.new(
    name: category[:name]
  )
  category.photo.attach(io: File.open("app/assets/images/category/#{category[:name].parameterize.underscore}1.png"), filename: "#{category[:name].parameterize.underscore}1.png", content_type:'image/png')
  #category.photo.attach(io: File.open("app/assets/images/category/#{category[:name].parameterize.underscore}2.png"), filename: "#{category[:name].parameterize.underscore}2.png", content_type:'image/png')
  #category.photo.attach(io: File.open("app/assets/images/category/#{category[:name].parameterize.underscore}3.png"), filename: "#{category[:name].parameterize.underscore}3.png", content_type:'image/png')
  category.save!
  category_list << category
  increment += 1
end

increment = 1
puts 'Creating 5 fake user '
user_list = []
users.each do |user|
  puts "user #{increment}"
  user_create = User.new(
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
  user_create.save!
  user_list << user_create
  increment += 1
end
increment = 1
puts 'Creating 6 fakes missions '

mission_list = []
missions.each do |mission|
  puts "mission #{increment}"
  mission = Mission.create!(
    description: mission[:description],
    started_ad: DateTime.parse(mission[:started_ad]),
    finished_at: DateTime.parse(mission[:finished_at]),
    address: mission[:address],
    user: user_list[mission[:user_id] - 1],
    category_id: category_list[mission[:category_id] - 1].id,
  )
  mission_list << mission
  increment += 1
end
puts "Missions Created"

increment = 1
 helps.each do |help|
   puts "help #{increment}"
   help = Help.new(
     helpee_review: help[:helpee_review],
     helpee_rating: help[:helpee_rating],
     helper_review: help[:helper_review],
     helper_rating: help[:helper_rating],
     user: user_list[help[:user_id] - 1],
     mission_id: mission_list[help[:mission_id]- 1].id,
   )
   help.save!
   increment += 1
end
puts "helps Created"
puts "all is ok"
