class UserMailer < ApplicationMailer
  default from: "glefebvre17@yahoo.com"

  def contact_form(email, name, phone, message)
  @message = message
  @phone = phone
  @email = email

    mail(:from => email,
        :to => "interface_yves@hotmail.com",
        :subject => "Un nouveau message de la part de : #{name}"
        )
  end


end
