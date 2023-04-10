# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create herbivore species
brachiosaurus = Species.create(name: "Brachiosaurus", diet_type: Species.diet_types[:herbivore])
stegosaurus = Species.create(name: "Stegosaurus", diet_type: Species.diet_types[:herbivore])
ankylosaurus = Species.create(name: "Ankylosaurus", diet_type: Species.diet_types[:herbivore])
triceratops = Species.create(name: "Triceratops", diet_type: Species.diet_types[:herbivore])

# Create carnivore species
tyrannosaurus = Species.create(name: "Tyrannosaurus", diet_type: Species.diet_types[:carnivore])
velociraptor = Species.create(name: "Velociraptor", diet_type: Species.diet_types[:carnivore])
spinosaurus = Species.create(name: "Spinosaurus", diet_type: Species.diet_types[:carnivore])
megalosaurus = Species.create(name: "Megalosaurus", diet_type: Species.diet_types[:carnivore])

# Create cages
herbivore_cage = Cage.create(name: "Herbivore Cage", max_capacity: 10, power_status: Cage.power_statuses[:ACTIVE])
carnivore_cage = Cage.create(name: "Carnivore Cage", max_capacity: 5, power_status: Cage.power_statuses[:ACTIVE])

# Add dinosaurs to cages
brachiosaurus_1 = Dinosaur.create(name: "Brachy", species: brachiosaurus)
brachiosaurus_2 = Dinosaur.create(name: "Brachy Jr.", species: brachiosaurus)
stegosaurus_1 = Dinosaur.create(name: "Stego", species: stegosaurus)
triceratops_1 = Dinosaur.create(name: "Trike", species: triceratops)

herbivore_cage.dinosaurs << brachiosaurus_1
herbivore_cage.dinosaurs << brachiosaurus_2
herbivore_cage.dinosaurs << stegosaurus_1
herbivore_cage.dinosaurs << triceratops_1

tyrannosaurus_1 = Dinosaur.create(name: "T-Rex", species: tyrannosaurus)
tyrannosaurus_2 = Dinosaur.create(name: "Rexy", species: tyrannosaurus)
velociraptor_1 = Dinosaur.create(name: "Velociraptor 1", species: velociraptor)

carnivore_cage.dinosaurs << tyrannosaurus_1
carnivore_cage.dinosaurs << tyrannosaurus_2
carnivore_cage.dinosaurs << velociraptor_1
