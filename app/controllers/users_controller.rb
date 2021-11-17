class UsersController < ApplicationController
  #(R)ead
  def index
    # here we grab all users
    @users = User.all
    # render users
    render component: "users", props: {users:@users}
  end

  def show
    @user = User.find(params[:id])
    #find user and show it (1 user by id)
    # render user
    render component: "oneUser", props: {user: @user}
  end

  #(C)reate
  def new
    # render new form
    render component: "newUser"
  end

  def create
    # create user(from from UI) to our db
    User.create(full_name: params[:user][:full_name], age: params[:user][:age], gender: params[:user][:gender])
    redirect_to root_path
  end


  def users_params
    params.require(:user).permit(:full_name, :age, :gender)
  end


 # (U)pdate
  # edit returns the form to user/client
 def edit
  @user = User.find(params[:id])
  render component: "userEdit", props: { user: @user }
end

# update takes values from form and updates the record
def update
  @user = User.find(params[:id])
  if @user.update(users_params)
    # this will take us to our index method
    redirect_to root_path
  else
    render component: "userEdit", props: { user: @user }
  end
end

  #(D)elete
  def destroy
    # find car to Delete
    user = User.find(params[:id])
    # Delete
    user.destroy
    redirect_to root_path
  end


end
