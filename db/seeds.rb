User.destroy_all
Brand.destroy_all
Item.destroy_all

alex = User.create(name: "Alex", email: "alex@gmail.com" password: "1234", admin: true)
francis = User.create(name: "Francis", email: "francis@gmail.com", password: "1234")

chanel_employee = User.create(name: "Coco Chanel", email: "coco@chanel.com", password: "1234")
topshop_employee = User.create(name: "TopShop Employee", email: "me@topshop.com", password: "1234")
uniqlo_employee = User.create(name: "I love Uniqlo", email: "me@uniqlo.com", password: "1234")
katz_employee = User.create(name: "Katz Person", email: "me@katz.com", password: "1234")
chipotle_employee = User.create(name: "Burrito Man", email: "me@chipotle.com", password: "1234")
apple_employee = User.create(name: "hipster", email: "iLike@apple.com", password: "1234")
bn_employee = User.create(name: "book lover", email: "iluvbooks@bn.com", password: "1234")
gregory_employee = User.create(name: "barista", email: "caffeine4u@gregory.com", password: "1234")

chanel = Brand.create(name: "Chanel", prestige: 5, location: "NYC", business: chanel_employee)
topshop = Brand.create(name: "TopShop", prestige: 4, location: "NYC", business: topshop_employee)
uniqlo = Brand.create(name: "Uniqlo", prestige: 3, location: "NYC", business: uniqlo_employee)
katz = Brand.create(name: "Katz Deli", prestige: 3, location: "NYC", business: katz_employee)
chipotle = Brand.create(name: "Chipotle", prestige: 2, location: "NYC", business: chipotle_employee)
apple = Brand.create(name: "Apple Store", prestige: 4, location: "NYC", business: apple_employee)
bn = Brand.create(name: "Barnes and Noble", prestige: 2, location: "NYC", business: bn_employee)
gregory = Brand.create(name: "Gregory's", prestige: 2, location: "NYC", business: bn_employee)
