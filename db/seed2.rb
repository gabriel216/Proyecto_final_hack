user_list = [
	["antonio.franceskin@gmail.com"],
	["gabrielgomez353@gmail.com"],
	["rcr2012@gmail.com"],
	["empresaspolar@gmail.com"],
	["andrea@gmail.com"],
	["pepe@gmail.com"],
	["carlos@gmail.com"]
]

user_list.each do |email1|
	usuario = User.new( email: email1)
	usuario.password = '123456'
	usuario.save!
end

client_list = [
	["Antonio", "Franceskin", "V-5258263-7", "04242057071", "7", "1"],
	["Gabriel", "Gomez", "V-26530267-6", "04242057072", "5", "2"],
	["Ricardo", "Capuz", "V-6019865-5", "04242057073", "8", "3"],
	["Polar", "CA", "J-6530267-6", "02122057072", "10", "4"],
	["Andrea", "Boccelli", "E-80525621-6", "0155242057072", "5", "5"],
	["Jose", "Perez", "V-26530356-6", "04242057075", "5", "6"],
	["Carlos", "Torrealba", "V-30530267-6", "04242057070", "0", "7"]
]

client_list.each do |name1, lastname1, cirif1, phone1, reputation1, user_id1|
	cliente = Client.create( name: name1, lastname: lastname1, cirif:cirif1, 
		reputation:reputation1, phone: phone1, user_id:user_id1)
end

publicidad_list = [
	["evento", "lean startup", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "1"],
	["foro", "comercializacion y marketing inmobiliario", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "2"],
	["curso", "lean startup", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "3"],
	["taller", "mentalidad del lider", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "4"],
	["otros", "decoEstylo", "Lorem ipsum dolor sit amet", "19/08/2017",
		"2", "15:00", "19:00", "Teatro el Hatillo, mun. Hatillo", "15",
		"04242057072", "5"]
]

publicidad_list.each do |category_type1, title1, description1, start_date1, 
	duration1, start_hour1, end_hour1, location1, cost1, phone1, client1|
	publicidad = Category.create( category_type: category_type1, title: title1, 
		description:description1, start_date:start_date1, 
		duration: duration1, start_hour:start_hour1, end_hour:end_hour1,
		location:location1, cost:cost1, phone:phone1, client_id:client1 )

end

