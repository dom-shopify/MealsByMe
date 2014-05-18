#class PagesController < ApplicationController
#  def home
#  end
#end

class PagesController < ApplicationController
  def home
    @beta_request = BetaRequestUser.new
  end
 
  def create
    @beta_request = BetaRequestUser.new(params[:page])
  end
 
end