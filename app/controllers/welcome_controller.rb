class WelcomeController < ApplicationController
  def index
    redirect_to count_path if current_user
  end

  def count
    redirect_to root_path unless current_user
  end
end
