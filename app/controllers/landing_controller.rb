class LandingController < ApplicationController
  skip_before_action :authenticate_account!
  def index
  	render :layout => "empty"
  end
end
