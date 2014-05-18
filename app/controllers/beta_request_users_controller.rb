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

    @beta_request_user = BetaRequestUser.find_by(:id)
    BetaRequestUser.update(:email)

    #@beta_request_user = BetaRequestUser.update(params[:id])
    #if @beta_request_user.update_attributes(params[:email])
    #  redirect_to edit_beta_request_user_path
    #  end
  end

  def show
    @beta_request_user = BetaRequestUser.find(params[:id])
  end
 
 private
  def page_params
    params.require(:beta_request_user).permit(:id, :zip, :delivery_type, :email)
  end
end
