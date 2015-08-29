module Api
  class VolunteersController < ApplicationController
    respond_to :json

    include SessionsHelper
    
    def index
      @volunteers = Volunteer.all
    end

    def new
       volunteer = Volunteer.new
    end

    def create
      volunteer = Volunteer.new(volunteer_params)
      if volunteer.save
        session[:id] = volunteer.id
        # redirect_to #somewhere
        # ie: redirect_to @volunteer
      else
        flash[:error] = "email or password is wrong"
        # render 'new'
      end
    end

    def show
    end

    def edit
    end

    def update
    end

    private
    def volunteer_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
  end

end