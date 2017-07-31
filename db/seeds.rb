
	usuario = User.new(name:"Antonio", lastname:"Franceskin", cirif:"52582637", phone: "04242057071", reputation: "1")
	usuario.email = "antonio.franceskin@gmail.com"
	usuario.password = '123456'
	puts "USUARIO #{usuario.inspect}"
	usuario.save!
	usuario = User.new(name:"Gabriel", lastname:"Gomez", cirif:"265302676", phone: "04242057071", reputation: "3")
	usuario.email = "gabrielgomez353@gmail.com"
	usuario.password = '123456'
	puts "USUARIO #{usuario.inspect}"
	usuario.save!


publicidad_list = [
	["evento", "lean startup", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "1", "http://academia.devtohack.com/", "10"],

	["foro", "comercializacion y marketing inmobiliario", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "2", "https://opcionvenezuela.wordpress.com/", "8"],

	["curso", "lean startup", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "1", "https://www.ted.com/", "10"],
	["taller", "mentalidad del lider", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "2", "https://www.ted.com/talks/marc_raibert_meet_spot_the_robot_dog_that_can_run_hop_and_open_doors", "10"],
	
	["documental", "mentalidad del lider parte 2", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "1", "https://www.ted.com/talks/vijay_kumar_robots_that_fly_and_cooperate", "7"],	
	["otros", "decoEstylo", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "2", "https://www.ted.com/talks/vijay_kumar_the_future_of_flying_robots", "6"]
]

publicidad_list.each do |category_type1, title1, description1, start_date1, 
	duration1, start_hour1, end_hour1, location1, cost1, phone1, user1, website1, prioridad1|
	publicidad = Category.new( category_type: category_type1, title: title1, 
		description:description1, start_date:start_date1, 
		duration: duration1, start_hour:start_hour1, end_hour:end_hour1,
		location:location1, cost:cost1, phone:phone1, user_id:user1, web_site:website1, priority: prioridad1, status:true)
	publicidad.avatar1 = File.open("#{Rails.root}/imagenes/1.jpg")
	publicidad.avatar2 = File.open("#{Rails.root}/imagenes/2.jpg")
	publicidad.avatar3 = File.open("#{Rails.root}/imagenes/3.jpg")
	publicidad.save!
end

