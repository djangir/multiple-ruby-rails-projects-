class StaticPagesController < ApplicationController
  def home
    @title = "Static Home Page"
  end

  def help
    @title = "Static Help Page"
  end

  def contact
    @title = "Static contact Page"
  end

  def signup
    @title = "Sign Up Now"
  end
end
