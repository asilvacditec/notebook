namespace :utils do
  def stat_message(model="",status="")
    puts "Generando #{model} ... #{status}"
  end

  desc "Popular banco de dados com dados para teste"
  task seed: :environment do
    stat_message("Contact","Starting")
    10.times { |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: LeroleroGenerator.sentence([1,2,3,4].sample)
      )
    }
    stat_message("Contact","OK!")
    
    
    stat_message("Address","Starting")
    Contact.all.each { |contact|
      Address.create!(
        streat: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state,
        contact: contact
      )
    }
    stat_message("Address","OK!")
    
    
    stat_message("Phone","Starting")
    Contact.all.each { |contact|
      #Random.rand(5).times { |i|
      2.times { |i|
        Phone.create!(
          phone: Faker::PhoneNumber.phone_number,
          contact: contact
        )
      }
    }
    stat_message("Phone","OK!")
    
  end

end
