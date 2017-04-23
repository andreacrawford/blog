class UserMailer < ApplicationMailer
  default from: "fake@bro-reps.com"

  def welcome(user)
    @appname = "Andreas Kitchen"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

end
