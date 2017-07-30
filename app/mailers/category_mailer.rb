class CategoryMailer < ApplicationMailer
	default from: "opcionvenezuelaorg@gmail.com" 

  def publication(user)
    @user = user
    mail(to: @user.email, subject: 'Alguien quiere publicar en tu página')
  end
end
