# module Api
  class VolunteersController < ApplicationController

    include SessionsHelper
    
    def index
      volunteers = Volunteer.all
      render json: volunteers, status: 201
    end
    
    def bananas
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

# end