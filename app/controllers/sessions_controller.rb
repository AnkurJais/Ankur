class SessionsController < ApplicationController
 
  def new

  end


  def create 
 	  submitted_email=params[:session][:email].downcase
 	  user = User.find_by_email(submitted_email )
 	  #user = User.find_by(email: submitted_email )
    #if user && user.authenticate(params[:session][:email])
    if user
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      # Create an error message.
      flash[:success] = 'Invalid name/email combination' # Not quite right!
      render 'new'
    end
  end 

  def destroy
    log_out
    redirect_to root_url
  end
end
