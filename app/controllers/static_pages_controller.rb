class StaticPagesController < ApplicationController
  def home
  	@message=Message.new
  end

  def contact
  	@message=Message.new
  end

  def about
  end

  def freelance
  end
end
