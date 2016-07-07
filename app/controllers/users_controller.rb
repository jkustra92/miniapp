class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    puts "========"
    p @user
    p @user.posts
    puts "========"
    @posts = @user.posts
  end

  private 
  def set_user
    @user = User.find(params[:id])   
  end
end