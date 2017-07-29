# Preview all emails at http://localhost:3000/rails/mailers/category_mailer
class CategoryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/category_mailer/publication
  def publication
    CategoryMailer.publication(User.first)
  end

end
