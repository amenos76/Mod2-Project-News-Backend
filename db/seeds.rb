# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all


fake_favorite = Favorite.create(
    title: "Watch a new SpaceX Dragon spacecraft dock with the ISS loaded with experiments - CNET",
    description: "A Dragon 2 capsule is set to connect with the International Space Station on Monday after being boosted to orbit by a Falcon 9 rocket.",
    link_to_image: "https://cnet4.cbsistatic.com/img/vDKzzSL23VzerBEkSj4Wkr1lgDY=/1200x630/2020/12/04/de1f83a3-5f04-4b2f-921b-5a4ab625179d/dragon-attached-harmony-module.jpg",
    link_to_story: "https://www.cnet.com/news/watch-a-new-spacex-dragon-spacecraft-dock-with-the-iss-loaded-with-science-experiments/")