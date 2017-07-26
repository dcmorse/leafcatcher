class HelloController < ApplicationController
  def index
  end

  def got_leaf
    if current_user
      current_user.score += 1           # business logic
      current_user.save!
      flash[:notice] = "Great Job #{current_user.email}!! You're up to #{current_user.score}! Keep riding!"
    else
      flash[:notice] = "You've gotta be logged in for it to count."
    end
    redirect_to '/'
  end
end
