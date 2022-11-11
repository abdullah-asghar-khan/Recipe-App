class UsersController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def new; end

  def create; end

  def destroy; end

  def sign_out
    sign_out_and_redirect(current_user)
  end
end
