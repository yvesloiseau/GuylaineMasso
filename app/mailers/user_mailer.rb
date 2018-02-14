class UserMailer < ApplicationMailer
  default from: "glefebvre17@yahoo.com"

  def contact_form(email, name, phone, message)
  @message = message
  @phone = phone
  @email = email
  @name = name

    mail(:from => email,
        :to => "glefebvre17@yahoo.com",
        :subject => "Un nouveau message de la part de : #{name}"
        )
  end


end
