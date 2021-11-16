class UsersController < ApplicationController
 # our Car model is an ActiveRecord
  #(R)ead
  def index
    # here we grab all cars
    @users = User.all
    # render cars
    render component: "users", props:{users:@users}
  end

  def show
    @user = User.find(params[:id])
    #find car and show it (1 car by id)
    # render car
    render component: "oneUser", props: {user: @user}
  end

  #(C)reate
  def new
    # render new form
    render component: "newUser"
  end

  def create
    # create car(from from UI) to our db
    User.create(full_name: params[:user][:full_name], age: params[:user][:age], gender: params[:user][:gender])
    redirect_to root_path
  end

  #(U)pdate
  # def edit
  #   #we need to find car in DB to update
  #   user = User.find(params[:id])
  #   # render update form
  #   render component: "UpdateUser"
  # end

  # def update
  #   # find car to Update
  #   car = Car.find(params[:id])
  #   # update car(from from UI) to our db
  # end

  # #(D)elete
  # def destroy
  #   # find car to Delete
  #   car = Car.find(params[:id])
  #   # Delete
  #   car.destroy
  # end

  # private

  # def car_params
  # end

end
