
asad = User.create(name:"Asad", zip_code:12205)
jafri = User.create(name:"Jafrisons", zip_code:11364)
wayne = User.create(name:"Bruce Wayne", zip_code: 10004)


supra = CarModel.create(manufacturer:"Toyota", model:"Supra")
aston = CarModel.create(manufacturer:"Aston Martin", model: "Vanquish")
civic = CarModel.create(manufacturer:"Honda", model:"Accord")


int1 = CarInterest.create(username_id:asad.id, model_id:supra.id)
int2 = CarInterest.create(username_id:wayne.id, model_id:aston.id)
int3 = CarInterest.create(username_id:jafri.id, model_id:civic.id)
