user_list = [
	["gabrielgomez353@gmail.com"]
]

user_list.each do |email1|
	usuario = User.new( email: email1)
	usuario.password = '12345678'
	usuario.save!
end

client_list = [
	["Gabriel", "Gomez", "V-26530267-6", "04242057072", "5", "1"]
]

client_list.each do |name1, lastname1, cirif1, phone1, reputation1, user1|
	cliente = Client.create( name: name1, lastname: lastname1, cirif:cirif1, 
		reputation:reputation1, phone: phone1, user_id:user1)
end


