class UserMailer < ApplicationMailer
  default from: "glefebvre17@yahoo.com"

  def contact_form(email, name, phone, message)
  @message = message
    mail(:from => email,
        :to => "loiseau.y@gmail.com",
        :subject => "Un nouveau message de la part de : #{name}"
        )
  end


end
