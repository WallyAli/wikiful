class WelcomeController < ApplicationController
  def index
  	@recent_articles = Article.order(updated_at: :asc).limit(5)
  	
  end
end
