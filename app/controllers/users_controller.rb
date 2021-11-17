class UsersController < ApplicationController
 # our Car model is an ActiveRecord
  #(R)ead
  def index
    # here we grab all users
    @users = User.all
    # render users
    render component: "users", props: {users:@users}
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


  def users_params
    params.require(:user).permit(:full_name, :age, :gender)
  end


 # (U)pdate
  # edit returns the form to user/client
 def edit
  @user = User.find(params[:id])
  # If method ends here Rails will look for the erb file in app/views/pages/edit.html.erb by default at this point
  ## SSRR WAY ###
  # if we comment this out Rails will look for the erb file in app/javascript/components/PageEdit.js
  render component: "userEdit", props: { user: @user }
end

# update takes values from form and updates the record
def update
  @user = User.find(params[:id])
  if @user.update(users_params)
    # this will take us to our index method
    redirect_to root_path
  else
    # renders app/views/pages/edit.html.erb (ERB WAY)
    # render :edit
   
    ## SSRR way ##
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
