class StaticPageController < ApplicationController
  def home
  end

  def private
    if logged_in?
    else
      flash[:danger] = "Le contenu n'est accessible qu'aux personnes connectées"
      redirect_to login_path
    end
  end
end
