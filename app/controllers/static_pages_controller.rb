class StaticPagesController < ApplicationController
  def home
    @title = "Static Home Page"
    @mthod = "Home"
  end

  def help
    @title = "Static Help Page"
    home
  end

  def contact
    @title = "Static contact Page"
  end

  def signup
    @title = "Sign Up Now"
  end
end
