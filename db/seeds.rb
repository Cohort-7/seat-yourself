Category.create(name: "Italian")
Category.create(name: "Mexican")
Category.create(name: "Mediterranean")
Category.create(name: "French")
Category.create(name: "American")
Category.create(name: "Pizza")
Category.create(name: "Indian")
Category.create(name: "Japanese")
Category.create(name: "Thai")


Customer.create(name: "abc", email:"rty", password_digest:"yyd")
Customer.create(name: "eee", email:"ggg", password_digest:"vbn")
Customer.create(name: "rrr", email:"bbb", password_digest:"fds")
Customer.create(name: "ttt", email:"nnn", password_digest:"fre")
Customer.create(name: "yyy", email:"hhe", password_digest:"ffg")


Restaurant.create(name: "Burito Boys", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, email: "burrito@boys.com", password_digest: "burritos4ever",capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [2] )
Restaurant.create(name: "Mi Italiano", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, email: "imitalian@hotmail.com", password_digest: "buccadibeppo", capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [1] )
Restaurant.create(name: "La Cantina y Chinese", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, email: "sombreoros@hotmail.com", password_digest: "fishtacosnorangechicken", capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [8, 2])
Restaurant.create(name: "French-Pad-Thai", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, email: "bonjour@bonjour.com", password_digest: "frenchbread", capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [4, 9])
Restaurant.create(name: "American South Texas BBQ Grill", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, email: "ihearttex@tx.gov", password_digest: "bbqing", capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [5, 6, 2])



Reservation.create(time: Time.now + 5.days, people:"5", status:"reserved", customer_id:"1", restaurant_id:"1")
Reservation.create(time: Time.now - 5.days, people:"6", status:"completed",customer_id:"2", restaurant_id:"2")
Reservation.create(time: Time.now + 6.days, people:"3", status:"reserved", customer_id:"3", restaurant_id:"3")
Reservation.create(time: Time.now + 1.days, people:"9", status:"reserved", customer_id:"4", restaurant_id:"4")
Reservation.create(time: Time.now - 2.days, people:"4", status:"canceled", customer_id:"5", restaurant_id:"5")
