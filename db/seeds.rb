# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

User.destroy_all

#PAPI/MAMI
User.create( email: "papi@gmail.com", created_at: "2017-11-14 10:27:38", updated_at: "2017-11-14 10:29:50", admin: false, password: "azerty",role: true, ville: "Bordeaux", code_postal: nil, rue: nil, numero_rue: nil, complement_adresse: nil, nom: nil, prenom: "Michel", telephone: nil, quartier: nil )
#STUDENT
User.create( email: "student@gmail.com", created_at: "2017-11-14 10:27:38", updated_at: "2017-11-14 10:29:50", admin: false, password: "azerty",role: false, ville: "Bordeaux", code_postal: nil, rue: nil, numero_rue: nil, complement_adresse: nil, nom: nil, prenom: "Josette", telephone: nil, quartier: nil )

User.create( email: "parisien@gmail.com", created_at: "2017-11-14 10:27:38", updated_at: "2017-11-14 10:29:50", admin: false, password: "azerty",role: false, ville: "Paris", code_postal: nil, rue: nil, numero_rue: nil, complement_adresse: nil, nom: nil, prenom: "Booba", telephone: nil, quartier: nil )

User.create( email: "admin@admin.com", created_at: "2017-11-14 10:27:38", updated_at: "2017-11-14 10:29:50", admin: true, password: "azerty",role: nil, ville: "Paris", code_postal: nil, rue: nil, numero_rue: nil, complement_adresse: nil, nom: nil, prenom: "Booba", telephone: nil, quartier: nil )

Repa.destroy_all
Participation.destroy_all
Message.destroy_all
