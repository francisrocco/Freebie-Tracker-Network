UserItem.destroy_all
User.destroy_all
Brand.destroy_all
Item.destroy_all


alex = User.create(name: "Alex", email: "alex@gmail.com", password: "1234", admin: true)
clay = User.create(name: "Clay", email: "clay@gmail.com", password: "1234")
george_eliot = User.create(name: "George Eliot", email: "mary_ann_evans@gmail.com", password: "1234")
charles_dickens = User.create(name: "Charles Dickens", email: "charles@gmail.com", password: "1234")
anthony_trollope = User.create(name: "Anthony Trollope", email: "anthony@gmail.com", password: "1234")

chanel_employee = User.create(name: "Coco Chanel", email: "coco@chanel.com", password: "1234")
topshop_employee = User.create(name: "TopShop Employee", email: "me@topshop.com", password: "1234")
uniqlo_employee = User.create(name: "I love Uniqlo", email: "me@uniqlo.com", password: "1234")
katz_employee = User.create(name: "Katz Person", email: "me@katz.com", password: "1234")
chipotle_employee = User.create(name: "Burrito Man", email: "me@chipotle.com", password: "1234")
apple_employee = User.create(name: "hipster", email: "iLike@apple.com", password: "1234")
bn_employee = User.create(name: "book lover", email: "iluvbooks@bn.com", password: "1234")
gregory_employee = User.create(name: "barista", email: "caffeine4u@gregory.com", password: "1234")

chanel = Brand.create(name: "Chanel", prestige: 5, location: "NYC", business: chanel_employee, brand_image: File.new("app/assets/images/chanel_logo.gif"))
topshop = Brand.create(name: "TopShop", prestige: 4, location: "NYC", business: topshop_employee, brand_image: File.new("app/assets/images/topshop_logo.jpg"))
uniqlo = Brand.create(name: "Uniqlo", prestige: 3, location: "NYC", business: uniqlo_employee, brand_image: File.new("app/assets/images/uniqlo_logo.jpg"))
katz = Brand.create(name: "Katz Deli", prestige: 3, location: "NYC", business: katz_employee, brand_image: File.new("app/assets/images/katz_logo.jpeg"))
chipotle = Brand.create(name: "Chipotle", prestige: 2, location: "NYC", business: chipotle_employee, brand_image: File.new("app/assets/images/chipotle_logo.jpg"))
apple = Brand.create(name: "Apple Store", prestige: 4, location: "NYC", business: apple_employee, brand_image: File.new("app/assets/images/apple_logo.jpg"))
bn = Brand.create(name: "Barnes and Noble", prestige: 2, location: "NYC", business: bn_employee, brand_image: File.new("app/assets/images/bn_logo.jpg"))
gregory = Brand.create(name: "Gregory's", prestige: 2, location: "NYC", business: gregory_employee, brand_image: File.new("app/assets/images/gregory_logo.jpg"))

keychain = Item.create(name: "Chanel logo keychain", market_value: 50, gimmick: "Purchase of at least $800", brand_id: chanel.id, item_image: File.new("app/assets/images/keychain.jpg"))
scarf = Item.create(name: "Chanel scarf", market_value: 200, gimmick: "Purchase of at least $2000, Black Friday Only", brand_id: chanel.id, item_image: File.new("app/assets/images/scarf.jpg"))
socks = Item.create(name: "6 pack of socks", market_value: 20, gimmick: "Buy one get one free", brand_id: topshop.id, item_image: File.new("app/assets/images/socks.jpg"))
thermalwear = Item.create(name: "Thermal underwear", market_value: 20, gimmick: "Show up between 1-3 pm", brand_id: uniqlo.id, item_image: File.new("app/assets/images/thermal_underwear.jpg"))
sandwich = Item.create(name: "Sandwich", market_value: 3, gimmick: "Sign up for mailing list", brand_id: katz.id, item_image: File.new("app/assets/images/sandwich.jpeg"))
burrito = Item.create(name: "Burrito", market_value: 10, gimmick: "Download app", brand_id: chipotle.id, item_image: File.new("app/assets/images/burrito.jpeg"))
charger = Item.create(name: "Mobile charger", market_value: 20, gimmick: "Post a picture of yourself next to your Apple device on Facebook and tag yourself", brand_id: apple.id, item_image: File.new("app/assets/images/charger.jpg"))
voucher = Item.create(name: "Starbucks drink voucher", market_value: 8, gimmick: "Free with any purchase", brand_id: bn.id, item_image: File.new("app/assets/images/voucher.jpeg"))
coffee = Item.create(name: "12 oz. coffee", market_value: 5, gimmick: "Get every 12 free with punch card", brand_id: gregory.id, item_image: File.new("app/assets/images/gregory_coffee.jpg"))
drink = Item.create(name: "Large drink", market_value: 3, gimmick: "Make a purchase at 3 pm", brand_id: chipotle.id, item_image: File.new("app/assets/images/soft_drink.jpeg"))
iphone_case = Item.create(name: "iPhone case", market_value: 20, gimmick: "Free to first 200 people in the door on Black Friday", brand_id: apple.id, item_image: File.new("app/assets/images/iphone_case.jpeg"))
bookmark = Item.create(name: "Bookmark", market_value: 7, gimmick: "Free to first 300 people in the door", brand_id: bn.id, item_image: File.new("app/assets/images/bookmark.jpg"))

UserItem.create(user_id: clay.id, item_id: burrito.id)
UserItem.create(user_id: clay.id, item_id: coffee.id)
UserItem.create(user_id: george_eliot.id, item_id: bookmark.id)
UserItem.create(user_id: george_eliot.id, item_id: scarf.id)
UserItem.create(user_id: george_eliot.id, item_id: coffee.id)
UserItem.create(user_id: george_eliot.id, item_id: sandwich.id)
UserItem.create(user_id: george_eliot.id, item_id: keychain.id)
UserItem.create(user_id: charles_dickens.id, item_id: charger.id)
UserItem.create(user_id: charles_dickens.id, item_id: iphone_case.id)
UserItem.create(user_id: anthony_trollope.id, item_id: keychain.id)
