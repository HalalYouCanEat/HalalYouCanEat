class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
	before_action :logged_in_user, only: [:index, :edit, :update, :destroy] 
	before_action :correct_user,   only: [:edit, :update]
	before_action :admin_user,     only: :destroy
	

  # GET /users or /users.json
  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end

  # GET /users/1 or /users/1.json
  def show
		@user = User.find(params[:id])
    redirect_to root_url and return unless @user.activated?
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
	def edit
    @user = User.find(params[:id])
  end

  # POST /users or /users.json
  def create
    @user = User.create(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."

      # TODO: delete these three line below when we want to enable email activation
      @user.activate
      log_in @user
      flash[:success] = "Welcome to the HalalYouCanEat App!"

      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
				flash[:success] = "Profile updated"
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:id, :name, :email, :password, :password_confirmation)
    end
		# Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
				store_location
        flash[:danger] = "Please log in."
        redirect_to login_url, status: :see_other
      end
    end

		# Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
			redirect_to(root_url, status: :see_other) unless current_user?(@user)
    end

		# Confirms an admin user.
    def admin_user
      redirect_to(root_url, status: :see_other) unless current_user.admin?
    end

end
