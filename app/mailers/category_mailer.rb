class CategoryMailer < ApplicationMailer
	default from: "opcionvenezuelaorg@gmail.com" 

  def publication(user)
    @user = user
    @url = "opcionvenezuelaorg@gmail.com"
    puts " Soy el email#{@user.email}"
    puts "Voy a enviar un correo #{@user.inspect}"
    mail(to: @user.email, subject: 'Alguien quiere publicar en tu página')
  end
end
