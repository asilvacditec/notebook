# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

def stat_message(model="",status="")
  puts "Generando #{model} ... #{status}"
end


stat_message("Kind","Starting")
Kind.create([{description: "Familia"},
             {description: "Amigo Pessoal"},
             {description: "Trabalho"},
             {description: "Capoeira"},
             {description: "Igreja"},
             {description: "Futebol"}])
stat_message("Kind","OK!")