# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning db...'
Trainer.destroy_all

puts 'Creating trainers...'

Trainer.create!(name: 'Misty', banner_url: 'https://th.bing.com/th/id/R.df5648b5b1d12c60bb0215939b216466?rik=5CnrSIjr4KZ3Hw&riu=http%3a%2f%2fimages2.fanpop.com%2fimages%2fphotos%2f5700000%2fmisty-misty-5789230-720-480.jpg&ehk=s4cOkpaPdwN1IuJs75P3GV4rRujRJSDfqtVMkAuCZDQ%3d&risl=&pid=ImgRaw&r=0')

Trainer.create!(name: 'Ash', banner_url: "https://th.bing.com/th/id/R.6ee9013cf67d650c1102f9ba5b963d9f?rik=7Y5RIOyT14NNaA&riu=http%3a%2f%2fimages4.fanpop.com%2fimage%2fphotos%2f17700000%2fAsh-ash-ketchum-17729805-640-480.jpg&ehk=uXZXfFRQaBM6nijAVywnYanrldL7F7oxJzrDEHPuHrU%3d&risl=&pid=ImgRaw&r=0")

puts "Done zo/"
