#class PagesController < ApplicationController
#  def home
#  end
#end

class BetaRequestUsersController < ApplicationController
  def new
    @beta_request_user = BetaRequestUser.new
  end
 
  def create
    @beta_request_user = BetaRequestUser.new(page_params)

    if @beta_request_user.save
    	redirect_to @beta_request_user
    else
    	render :new
    end
  end

  def update

    #@beta_request_user = BetaRequestUser.find_by(:id)
    #BetaRequestUser.update(:email)

    @beta_request_user = BetaRequestUser.find(params[:id])

    if @beta_request_user.update_attributes(page_params)
      session[:beta_request_user_id] = params[:id]
      redirect_to new_confirm_beta_request_user_path(@beta_request_user)
    end
  end

  def confirm
  end

  def new_confirm
    @beta_request_user = BetaRequestUser.find(session[:beta_request_user_id])
  end

  def show
    @beta_request_user = BetaRequestUser.find(params[:id])
  end
 
 private
  def page_params
    params.require(:beta_request_user).permit(:id, :zip, :delivery_type, :email)
  end
end
