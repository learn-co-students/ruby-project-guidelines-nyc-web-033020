class Interface

    def start_up
        welcome
        login_or_join
    end
    
    def welcome
        puts "Welcome to Gotham Motors"
    end

    def login_or_join
        puts "Are you an existing user, or will you be signing up?"
        answer = gets.chomp
        puts "What is your zip code?"
        zcode = gets.chomp

        join = User.find_or_create_by(name:answer, zip_code:zcode)
    end


end