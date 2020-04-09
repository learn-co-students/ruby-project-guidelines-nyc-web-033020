
asad = User.create(name:"Asad", zip_code:12205)
jafri = User.create(name:"Jafrisons", zip_code:11364)
wayne = User.create(name:"Bruce Wayne", zip_code:10004)
cole = User.create(name:"J.Cole", zip_code:11375)
sara = User.create(name:"Saraswati", zip_code:11772)

supra = CarModel.create(manufacturer:"Toyota", model:"Supra")
aston = CarModel.create(manufacturer:"Aston Martin", model:"Vanquish")
civic = CarModel.create(manufacturer:"Honda", model:"Accord")
benz = CarModel.create(manufacturer:"Mercedes", model:"S550")
bm = CarModel.create(manufacturer: "BMW", model:"M8")

int1 = CarInterest.create(name_id:asad.id, model_id:supra.id)
int2 = CarInterest.create(name_id:wayne.id, model_id:aston.id)
int3 = CarInterest.create(name_id:jafri.id, model_id:civic.id)
int4 = CarInterest.create(name_id:cole.id, model_id:benz.id)
int5 = CarInterest.create(name_id:sara.id, model_id:bm.id)