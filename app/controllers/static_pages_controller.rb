class StaticPagesController < ApplicationController
  def index
    @featured_article = Article.first
  end

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'andrea@crawford.cc',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
  end
end
