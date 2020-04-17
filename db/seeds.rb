User.destroy_all
CarModel.destroy_all
CarInterest.destroy_all


asad = User.create(name:"Asad", zip_code:12205)
jafri = User.create(name:"Jafrisons", zip_code:11364)
wayne = User.create(name:"Bruce Wayne", zip_code:10004)
cole = User.create(name:"J.Cole", zip_code:11375)
sara = User.create(name:"Saraswati", zip_code:11772)

supra = CarModel.create(year:1995, manufacturer:"Toyota", model:"Supra", color:"Black", zip:12205, mileage: 30000, price: 65000)
aston = CarModel.create(year:2006, manufacturer:"Aston Martin", model:"Vanquish",color:"Gun Metal", zip:10004, mileage:12000, price:115000)
accord = CarModel.create(year:2019, manufacturer:"Honda", model:"Accord",color:"Rouge", zip:11364, mileage:18000, price:24600)
s550 = CarModel.create(year:2010, manufacturer:"Mercedes", model:"S550",color:"White", zip:11375, mileage:60000, price:60000)
m8 = CarModel.create(year:1995, manufacturer:"BMW", model:"M8", zip:11772, mileage:100000, price:15000)
nismo = CarModel.create(year:2007, manufacturer: "Nissan", model:"350z Nismo",color:"Red", zip:12205, mileage:78436, price:30000)
s15 = CarModel.create(year:1999, manufacturer:"Nissan", model: "240sx Silvia",color:"Marine", zip:11364, mileage:65876, price:5000)
cooper = CarModel.create(year:2008, manufacturer:"Mini", model: "Cooper S",color:"Canelle", zip:10004, mileage:42564, price:17000)
celica = CarModel.create(year:2000, manufacturer:"Toyota", model: "Celica",color:"Yellow", zip:11375, mileage:77698, price:10000)
c63 = CarModel.create(year:2008, manufacturer:"Mercedes", model:"C63",color:"Metallic Grey", zip:11772, mileage:43000, price:17657)
civic = CarModel.create(year:2020, manufacturer:"Honda", model:"Civic", color:"Red", zip:12205, mileage:5000, price:25643)
skyline = CarModel.create(year:2018, manufacturer: "Nissan", model: "GTR", color:"Black", zip:10004, mileage:18643, price:75786)
eclipse = CarModel.create(year:1999, manufacturer:"Mitsubishi", model:"Eclipse",color:"Red", zip:11364, mileage:99567, price:7000)
rx7 = CarModel.create(year:1994, manufacturer:"Mazda", model:"RX-7",color:"Red", zip:11375, mileage:10647, price:23000)
s2k = CarModel.create(year:2009, manufacturer:"Honda", model:"S2000",color:"Black", zip:11772, mileage:11654, price:12500)
mr2 = CarModel.create(year:1999, manufacturer:"Toyota", model:"MR2",color:"Blue", zip:12205, mileage:74567, price:8000)
ecoupe = CarModel.create(year:2013, manufacturer:"Mercedes", model:"E350",color:"White", zip:10004, mileage:18534, price:28000)
evo = CarModel.create(year:2004, manufacturer:"Mitsubishi", model:"Lancer Evo",color:"Lime", zip:11364, mileage:15746, price:36000)
m4 = CarModel.create(year:2018, manufacturer:"BMW", model:"M4", zip:11772, mileage:8000, price:63000)

int1 = CarInterest.create(name_id:asad.id, model_id:supra.id)
int2 = CarInterest.create(name_id:wayne.id, model_id:aston.id)
int3 = CarInterest.create(name_id:jafri.id, model_id:civic.id)
int4 = CarInterest.create(name_id:cole.id, model_id:c63.id)
int5 = CarInterest.create(name_id:sara.id, model_id:m8.id)