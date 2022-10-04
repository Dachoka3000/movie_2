# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
superman = Role.create(salary:1000, character_name:"Clark Kent", actor_id:1, movie_id:2)
sheldon = Role.create(salary:200, character_name:"Sheldon Cooper", actor_id:3,movie_id:1)
madea = Role.create(salary:45000, character_name: "Mabel Madea", actor_id:4, movie_id:2)
the_queen = Role.create(salary:37090, character_name:"Beyonce Knowles", actor_id:5, movie_id:1)
mkurugenzi = Role.create(salary:10000, character_name:"Joho Sonko", actor_id:2, movie_id:2)

puts "Seeding done!"