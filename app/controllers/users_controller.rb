class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  
  respond_to :json, :html
  
  def index
    @users = User.all
    respond_with @users
    
  end

  # GET /users/1
  # GET /users/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit

  end

  # POST /users
  # POST /users.json
  def create
    user_params.tap { |p| p.delete(:format) }
    @user = User.new(user_params)


   respond_with User.create(user_params)

    # flash[:notice] = "User was successfully created" if @user.save
    
    # respond_with @user
  end


  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
