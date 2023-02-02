class UsersController < ApplicationController

    before_action :authenticate_user!

    def index

        #@event = Event.find(params[:event_id])
        @users = User.all
    end


end
