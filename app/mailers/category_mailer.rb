class CategoryMailer < ApplicationMailer
	default from: "opcionvenezuelaorg@gmail.com" 

  def publication(user, user1)
    @user = user
    @user1 = user1
    mail(to: @user.email, subject: 'Alguien quiere publicar en tu página')
  end
end
