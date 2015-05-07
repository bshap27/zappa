class BandController < ApplicationController

  # before_action :authenticate_user!
  
  def index
    if !current_user
      redirect_to new_user_session_path
    # elsif BandMember.where(user_id: current_user).###try performer
    # elsif BandMember.where(user_id: current_user).manager
    else
      @band = current_user.bands
    end
  end
end