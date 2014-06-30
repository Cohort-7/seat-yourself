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

lorem = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. "

Restaurant.create(name: "Burito Boys", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [2], capacity: 1, description: lorem )
Restaurant.create(name: "Mi Italiano", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [1], capacity: 20, description: lorem )
Restaurant.create(name: "La Cantina y Chinese", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [8, 2], capacity: 20, description: lorem)
Restaurant.create(name: "French-Pad-Thai", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [4, 9], capacity: 20, description: lorem)
Restaurant.create(name: "American South Texas BBQ Grill", address: "270 Wellington St. West", open_time: Time.now - 9.hours, close_time: Time.now + 2.hours, capacity: 100, phone_number: 6164900372, menu_link: "#", category_ids: [5, 6, 2], capacity: 20, description: lorem)



Reservation.create(time: Time.now + 5.days, people:"5", status:"reserved", customer_id:"1", restaurant_id:"1")
Reservation.create(time: Time.now - 5.days, people:"6", status:"completed",customer_id:"2", restaurant_id:"2")
Reservation.create(time: Time.now + 6.days, people:"3", status:"reserved", customer_id:"3", restaurant_id:"3")
Reservation.create(time: Time.now + 1.days, people:"9", status:"reserved", customer_id:"4", restaurant_id:"4")
Reservation.create(time: Time.now - 2.days, people:"4", status:"canceled", customer_id:"5", restaurant_id:"5")

Review.create(title: "Great food!", comment: "The food was great!", rating: 5, customer_id: 1,restaurant_id: 1)
Review.create(title: "Terrible food!", comment: "The food was terrible!", rating: 1, customer_id: 2, restaurant_id: 1)
Review.create(title: "Ok food...", comment: "The food was ok..", rating: 3, customer_id: 3,restaurant_id: 1)
Review.create(title: "Great food!", comment: "The food was great!", rating: 5, customer_id: 1,restaurant_id: 2)
Review.create(title: "Great food!", comment: "The food was great!", rating: 5, customer_id: 1,restaurant_id: 3)