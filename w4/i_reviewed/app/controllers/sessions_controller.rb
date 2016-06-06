class SessionsController < ApplicationController
  def new
    # Login page - new.html.erb
  end
  
  def create
    reviewer = Reviewer.find_by(:name params[:reviewer][:name])
    password = params[:reviewer][:password]
    
    if reviewer && reviewer.authenticate(password)
      sessions[:reviewer_id] = reviewer.id
      redirect_to root_path, notice: "Login success"
    else
      redirect_to login_path, alert: "Invalid login"
    end
  end
  
  def destroy
    reset_session
    redirect_to login_path, notice: "Logged out"
  end
end
























end
