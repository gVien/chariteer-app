class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def index
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end
