class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jb"

  end

  def create
    @user = User.new(
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name],
      reputation: params[:reputation],
      gender: params[:gender],
      flagged?: params[:flagged?],
      mp_username: params[:mp_username],
    )
    @user.save
    render "show.index.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.reputation = params[:reputation] || @user.reputation
    @user.gender = params[:gender] || @user.gender
    # @user.flagged? = params[:flagged?] || @user.flagged?
    # ^ I think the syntax of this attribute is causing rails to throw a syntax error... may need to change the name of this thing by dropping it and then creating a new column called "flagged"
    

    render "show.json.jb"
   end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User was successfully deleted!"}
  end


end
