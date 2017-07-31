class CategoryMailer < ApplicationMailer
	default from: "opcionvenezuelaorg@gmail.com" 

  def publication(user, user1, titulo)
    @user = user
    @user1 = user1
    @titulo = titulo
    mail(to: @user.email, subject: 'Alguien quiere publicar en tu página')
  end

  def aproved_publication(user, user1, titulo)
    @user = user
    @user1 = user1
    @titulo = titulo
    mail(to: @user1.email, subject: 'Publicacion aprobada')
  end
end
