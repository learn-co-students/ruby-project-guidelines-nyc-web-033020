class Interface

    def start_up
        welcome
        login_or_join
        #main_screen
        view_inventory
    end
    
    def welcome
        puts "Welcome to Gotham Motors"
    end

    def login_or_join
        puts "Are you an existing user, or will you be signing up?"
        answer = gets.chomp
        puts "What is your zip code?"
        zcode = gets.chomp
        @user = User.find_or_create_by(name:answer, zip_code:zcode)
        puts "Welcome to Gotham Sir #{@user.name}"
    end

    def view_inventory
        puts "Would you like to view our inventory, sir?"
        one = CarModel.first.manufacturer + " " + CarModel.first.model
        puts one
        two = CarModel.second.manufacturer + " " + CarModel.second.model
        puts two
        three = CarModel.third.manufacturer + " " + CarModel.third.model
        puts three
        four = CarModel.fourth.manufacturer + " " + CarModel.fourth.model
        puts four
    end


end