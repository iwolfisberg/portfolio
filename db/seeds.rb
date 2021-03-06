puts "Destroy all"
Project.destroy_all

puts "Create projects"

def create_projects(name, description, image, github_url, url, description_fr)
  I18n.locale = :en
  project = Project.create!(name: name, description: description, image: image, github_url: github_url, site_url: url)
  I18n.locale = :fr
  project.description = description_fr
  project.save
end

tieTalent = create_projects("TieTalent",
  "TieTalent is a recruting platform which matches candidates and companies. During a 6 months internship, I helped maintained and developed it using Laravel framework.",
  "seed/tietalent.png",
  "",
  "https://tietalent.com/",
  "TieTalent est une platforme de recrutement qui match candidats et entreprises. Au cours d'un stage de 6 mois, j'ai participé à son maintien et développement à l'aide du framework Laravel.")
crazy_cocktails = create_projects("Crazy Cocktails",
  "A small Ruby on Rails project that allows users to create their own cocktails to add to a public repository. This was an individual project.",
  "seed/crazycocktail.png",
  "https://github.com/iwolfisberg/crazy-cocktails",
  "https://crazycocktails.herokuapp.com/",
  "Un simple projet Ruby on Rails permettant aux utilisateurs de créer des recettes de cocktail et de les ajouter à un répertoire public. Ceci est un projet individuel.")
slowtraveller = create_projects("SlowTraveller",
  "A team project that was developed during Le Wagon Lausanne. SlowTraveller is an app for people that want to find their next destinations and are conscious of their carbon footprint while travelling.",
  "seed/SlowTraveller.png",
  "https://github.com/iwolfisberg/slowtraveller",
  "http://slowtraveller.xyz/",
  "Un projet développé en équipe lors des deux dernières semaines du Wagon Lausanne. SlowTraveller est une app pour les voyageurs désireux de trouver la prochaine étape de leur voyage et de s'y rendre avec la plus faible empreinte carbone possible.")
rent_a_cat = create_projects("Rent A Cat",
  "A clone of Airbnb, this Ruby on Rails application was a team project that was developed during Le Wagon Lausanne. *This is a fictionnal project.",
  "seed/rentacat.png",
  "https://github.com/iwolfisberg/rent-a-cat",
  "https://rent-a-cat.herokuapp.com/",
  "Clone de AirBnB, cette application Ruby on Rails est un projet développé en équipe lors du Wagon Lausanne. *Ceci est bien sûr un projet fictionnel.")
