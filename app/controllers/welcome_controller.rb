class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def gallery
  end

  def products
	@my_time = Time.now
	@name = "Artur"
  end

  def blog
  end
end
