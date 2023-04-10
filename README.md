Commands Put into ChatGPT:

1. Paste the entire description of the project in 
2. Use ruby 3.2.0 and rails 7
3. add species model
4. rewrite the generators

Output So far (cleaned up):
1. rails new jurassic-park-api --api -d postgresql
2. rails g model Species name:string:uniq diet_type:integer
3. rails g model Cage name:string:uniq max_max_capacity:integer power_status:integer
4. rails g model Dinosaur name:string cage:references species:references
5. rails g controller Species index show create update destroy
6. rails g controller Cage index show create update destroy
7. rails g controller Dinosaur index show create update destroy
8. rails db:migrate

More Commands into GPT: (output pasted into correct places in code)
1. write the dinosaur model
2. write the cage model
3. write the species model
4. write the species controller
5. write the cage controller
6. write the dinosaur controller
7. write seeds for all the models
8. make sure dinosaurs are added to cages in the seeds