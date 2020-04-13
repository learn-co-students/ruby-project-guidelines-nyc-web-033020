require 'pry'
class Interface

    def start_up
        welcome
        login_or_join
        #main_screen
        #view_inventory
        change_zip
    end
    
    def welcome
        puts "Welcome to Gotham Motors"
    end

    def login_or_join
        puts "Are you an existing user? If not type your name to get started."
        answer = gets.chomp
        puts "What is your zip code?"
        zcode = gets.chomp
        @user = User.find_or_create_by(name:answer, zip_code:zcode)
        puts "Welcome to Gotham Sir #{@user.name}"
    end

    def main_screen
        puts "What would you like to do today?"
            #insert tty prompt for option to navigate through. Options 1-4
    end

    def view_inventory
        puts "Would you like to view our inventory, sir?"
        self.toyota
        self.aston_martin
        self.honda
        self.mercedes
        self.bmw
        self.nissan
        self.mini
        self.mitsubishi
        self.mazda

    end

 def toyota 
    supra = CarModel.find_by model:"Supra"
    print supra.year, supra.manufacturer, supra.model, supra.color, supra.zip, supra.mileage, supra.price
    celica = CarModel.find_by model:"Celica"
    print celica.year, celica.manufacturer, celica.model, celica.color, celica.zip, celica.mileage, celica.price
    mr2 = CarModel.find_by model:"MR2"
    print mr2.year, mr2.manufacturer, mr2.model, mr2.color, mr2.zip, mr2.mileage, mr2.price
end

def aston_martin
    vanquish = CarModel.find_by model:"Vanquish"
    print vanquish.year, vanquish.manufacturer, vanquish.model, vanquish.color, vanquish.zip, vanquish.mileage, vanquish.price
end

def honda
    accord = CarModel.find_by model:"Accord"
    print accord.year, accord.manufacturer, accord.model, accord.color, accord.zip, accord.mileage, accord.price
    civic = CarModel.find_by model:"Civic"
    print civic.year, civic.manufacturer, civic.model, civic.color, civic.zip, civic.mileage, civic.price
end

def mercedes
    s550 = CarModel.find_by model:"S550"
    print s550.year, s550.manufacturer, s550.model, s550.color, s550.zip, s550.mileage, s550.price
    c63 = CarModel.find_by model:"C63"
    print c63.year, c63.manufacturer, c63.model, c63.color, c63.zip, c63.mileage, c63.price
    ecoupe = CarModel.find_by model:"E350"
    print ecoupe.year, ecoupe.manufacturer, ecoupe.model, ecoupe.color, ecoupe.zip, ecoupe.mileage, c63.price
end

def bmw
    m8 = CarModel.find_by model:"M8"
    print m8.year, m8.manufacturer, m8.model, m8.color, m8.zip, m8.mileage, m8.price
    m4 = CarModel.find_by model:"M4"
    print m4.year, m4.manufacturer, m4.model, m4.color, m8.zip, m8.mileage, m8.price
end

def nissan
    nismo = CarModel.find_by model:"350z Nismo"
    print nismo.year, nismo.manufacturer, nismo.model, nismo.color, nismo.zip, nismo.mileage, nismo.price
    s15 = CarModel.find_by model:"240sx Silvia"
    print s15.year, s15.manufacturer, s15.model, s15.color, s15.zip, s15.mileage, s15.price
    skyline = CarModel.find_by model:"GTR"
    print skyline.year, skyline.manufacturer, skyline.model, skyline.color, skyline.zip, skyline.mileage, skyline.price
end

def mini
    cooper = CarModel.find_by model:"Cooper S"
    print cooper.year, cooper.manufacturer, cooper.model, cooper.color, cooper.zip, cooper.mileage, cooper.price
end

def mitsubishi
    eclipse = CarModel.find_by model:"Eclipse"
    print eclipse.year, eclipse.manufacturer, eclipse.model, eclipse.color, eclipse.zip, eclipse.mileage, eclipse.price
    evo = CarModel.find_by model:"Lancer Evo"
    print evo.year, evo.manufacturer, evo.model, evo.color, evo.zip, evo.mileage, evo.price
end

def mazda
    rx7 = CarModel.find_by model:"RX-7"
    print rx7.year, rx7.manufacturer, rx7.model, rx7.color, rx7.zip, rx7.mileage, rx7.price
end

 def select_favorite
    
 end

 def change_zip
    puts "Please enter new zip code."
    user = User.find_by(name:@user.name)
    userzip = User.find_by(zip_code:@user.zip_code)
    user.update(zip_code:userzip)
 end

end