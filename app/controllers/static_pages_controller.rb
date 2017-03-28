class StaticPagesController < ApplicationController
  def index
    @featured_article = Article.first
  end
end
