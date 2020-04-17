require "tty-prompt"
require 'pry'
class Interface

    attr_accessor :prompt

    def initialize
        @prompt = TTY::Prompt.new
    end

    def start_up
        welcome
        login_or_join
        main_screen
    end
    
    def welcome
        prompt.keypress("Welcome to Gotham Motors", keys: [:return]) 
    end

    def login_or_join
        puts "Are you an existing user? If not type your name to get started."
        answer = gets.chomp
        puts "What is your zip code?"
        zcode = gets.chomp
        @user = User.find_or_create_by(name:answer, zip_code:zcode)
        puts "Welcome to Gotham Sir #{@user.name}."
    end

    def main_screen
        system "clear"
        prompt.select("What would you like to do today?") do |menu|
            menu.choice "Your Profile", -> { your_profile }
            menu.choice "View Inventory", -> { select_manufacturer }
            #menu.choice "See My Favorites" -> {}
            menu.choice "Change Zipcode", -> { change_zip }
            menu.choice "Deactivate Account", -> { delete_account }
            menu.choice "Log Out", -> { exit_app }
        end
    end

    def your_profile
        puts "Please see below for your personal information."
        user = User.find_by(name:@user.name)
        puts user.name
        puts user.zip_code
        sleep(5)
        main_screen
    end

    def select_manufacturer
        prompt.select("Please select a make for your vehicle") do |menu|
            menu.choice "Aston Martin", -> { aston_martin }
            menu.choice "BMW", -> { bmw }
            menu.choice "Honda", -> { honda }
            menu.choice "Mazda", -> { mazda }
            menu.choice "Mercedes", -> { mercedes }
            menu.choice "Mini", -> { mini }
            menu.choice "Mitsubishi", -> { mitsubishi }
            menu.choice "Nissan", -> { nissan }
            menu.choice "Toyota", -> { toyota }
            menu.choice "Go Back to Main Screen", -> { main_screen }
        end
    end

    def aston_martin
        system "clear"
        vanquish = CarModel.find_by model:"Vanquish"
        puts "#{vanquish.year} #{vanquish.manufacturer} #{vanquish.model}"
        puts "Color: #{vanquish.color}" 
        puts "Zip Code: #{vanquish.zip}"
        puts "Mileage: #{vanquish.mileage}"
        puts "Asking Price: #{vanquish.price}"
        sleep(5)
        puts "Would you like to add this?"
        answer = gets.chomp
        select_manufacturer
    end

    def bmw
        system "clear"
        m8 = CarModel.find_by model:"M8"
        puts "#{m8.year} #{m8.manufacturer} #{m8.model}"
        puts "Color: #{m8.color}" 
        puts "Zip Code: #{m8.zip}" 
        puts "Mileage #{m8.mileage}" 
        puts "Asking Price: #{m8.price}"
        m4 = CarModel.find_by model:"M4"
        puts "#{m4.year} #{m4.manufacturer} #{m4.model}"
        puts "Color: #{m4.color}" 
        puts "Zip Code: #{m8.zip}" 
        puts "Mileage #{m8.mileage}"
        puts "Asking Price: #{m8.price}"
        sleep(5)
        select_manufacturer
    end

    def honda
        system "clear"
        accord = CarModel.find_by model:"Accord"
        puts "#{accord.year} #{accord.manufacturer} #{accord.model}"
        puts "Color: #{accord.color}"
        puts "Zip Code: #{accord.zip}" 
        puts "Mileage: #{accord.mileage}" 
        puts "Asking Price #{accord.price}"
        civic = CarModel.find_by model:"Civic"
        puts "#{civic.year} #{civic.manufacturer} #{civic.model}"
        puts "Color: #{civic.color}"
        puts "Zip Code: #{civic.zip}"
        puts "Mileage: #{civic.mileage}"
        puts "Asking Price: #{civic.price}"
        sleep(5)
        select_manufacturer
    end

    def mazda
        system "clear"
        rx7 = CarModel.find_by model:"RX-7"
        puts "#{rx7.year} #{rx7.manufacturer} #{rx7.model}"
        puts "Color: #{rx7.color}"
        puts "Zip Code: #{rx7.zip}"
        puts "Mileage: #{rx7.mileage}"
        puts "Asking Price: #{rx7.price}"
        sleep(5)
        select_manufacturer
    end

    def mercedes
        system "clear"
        s550 = CarModel.find_by model:"S550"
        puts "#{s550.year} #{s550.manufacturer} #{s550.model}"
        puts "Color: #{s550.color}"
        puts "Zip Code: #{s550.zip}"
        puts "Mileage: #{550.mileage}"
        puts "Price:#{s550.price}"
        c63 = CarModel.find_by model:"C63"
        puts "#{c63.year} #{c63.manufacturer} #{c63.model}"
        puts "Color: #{c63.color}"
        puts "Zip Code: #{c63.zip}"
        puts "Mileage: #{c63.mileage}"
            c63.price
        ecoupe = CarModel.find_by model:"E350"
        puts "#{ecoupe.year} #{ecoupe.manufacturer} #{ecoupe.model}"
        puts "Color: #{ecoupe.color}"
        puts "Zip Code: #{ecoupe.zip}"
        puts "Mileage: #{ecoupe.mileage}"
        puts "Asking price: #{c63.price}"
        sleep(5)
        select_manufacturer
    end

    def mini
        system "clear"
        cooper = CarModel.find_by model:"Cooper S"
        puts "#{cooper.year} #{cooper.manufacturer} #{cooper.model}"
        puts "Color: #{cooper.color}"
        puts "Zip Code: #{cooper.zip}"
        puts "Mileage: #{cooper.mileage}"
        puts "Asking Price: #{cooper.price}"
        sleep(5)
        select_manufacturer
    end

    def mitsubishi
        system "clear"
        eclipse = CarModel.find_by model:"Eclipse"
        puts "#{eclipse.year} #{eclipse.manufacturer} #{eclipse.model}"
        puts "Color: #{eclipse.color}"
        puts "Zip Code: #{eclipse.zip}"
        puts "Mileage: #{eclipse.mileage}"
        puts "Asking Price: #{eclipse.price}"
        evo = CarModel.find_by model:"Lancer Evo"
        puts "#{evo.year} #{evo.manufacturer} #{evo.model}"
        puts "Color: #{evo.color}"
        puts "Zip Code: #{evo.zip}"
        puts "Mileage: #{evo.mileage}"
        puts "Asking Price: #{evo.price}"
        sleep(5)
        select_manufacturer
    end

    def nissan
        system "clear"
        nismo = CarModel.find_by model:"350z Nismo"
        puts "#{nismo.year} #{nismo.manufacturer} #{nismo.model}"
        puts "Color: #{nismo.color}"
        puts "Zip Code: #{nismo.zip}"
        puts "Mileage: #{nismo.mileage}"
        puts "Asking Price: #{nismo.price}"
        s15 = CarModel.find_by model:"240sx Silvia"
        puts "#{s15.year} #{s15.manufacturer} #{s15.model}"
        puts "Color: #{s15.color}"
        puts "Zip Code: #{s15.zip}"
        puts "Mileage: #{s15.mileage}"
        puts "Asking Price: #{s15.price}"
        skyline = CarModel.find_by model:"GTR"
        puts "#{skyline.year} #{skyline.manufacturer} #{skyline.model}"
        puts "Color: #{skyline.color}"
        puts "Zip Code: #{skyline.zip}"
        puts "Mileage: #{skyline.mileage}"
        puts "Asking Price: #{skyline.price}"
        sleep(5)
        select_manufacturer
    end
 
    def toyota 
    system "clear"
    supra = CarModel.find_by model:"Supra"
    puts "#{supra.year} #{supra.manufacturer} #{supra.model}"
    puts "Color: #{supra.color}"
    puts "Zip Code: #{supra.zip}"
    puts "Mileage: #{supra.mileage}"
    puts "Asking Price: #{supra.price}"
    celica = CarModel.find_by model:"Celica"
    puts "#{celica.year} #{celica.manufacturer} #{celica.model}"
    puts "Color: #{celica.color}"
    puts "Zip Code: #{celica.zip}"
    puts "Mileage: #{celica.mileage}"
    puts "Asking Price: #{celica.price}"
    mr2 = CarModel.find_by model:"MR2"
    puts "#{mr2.year} #{mr2.manufacturer} #{mr2.model}"
    puts "Color: #{mr2.color}"
    puts "Zip Code: #{mr2.zip}"
    puts "Mileage: #{mr2.mileage}"
    puts "Asking Price: #{mr2.price}"
    sleep(5)
    select_manufacturer
end

#def user_favorites
#    puts "Here are the vehicles you have favorited"
#    myfav = CarInterest.find_or_create_by(name_id:@user.id, model_id: )
#   CarInterest.all.select do 
#end

 def change_zip
    puts "Please enter new zip code."
    newzip = gets.chomp
    user = User.find_by(name:@user.name)
    user.update(zip_code:newzip)
    main_screen
 end

 def delete_account
    puts "Are you sure you want to leave"
    answer = gets.chomp
    user = User.find_by(name:@user.name)
    user.destroy
    puts "Thank you for your interest here at Gotham Motors"
 end

 def exit_app
    puts "We will see you soon #{@user.name}. Have a great day!"
 end

end