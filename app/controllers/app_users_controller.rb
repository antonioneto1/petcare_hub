class AppUsersController < ApplicationController
  before_action :set_app_user, only: %i[ show edit update destroy ]

  # GET /app_users or /app_users.json
  def index
    @app_users = AppUser.all
  end

  # GET /app_users/1 or /app_users/1.json
  def show
  end

  # GET /app_users/new
  def new
    @app_user = AppUser.new
  end

  # GET /app_users/1/edit
  def edit
  end

  # POST /app_users or /app_users.json
  def create
    @app_user = AppUser.new(app_user_params)

    respond_to do |format|
      if @app_user.save
        format.html { redirect_to app_user_url(@app_user), notice: "App user was successfully created." }
        format.json { render :show, status: :created, location: @app_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_users/1 or /app_users/1.json
  def update
    respond_to do |format|
      if @app_user.update(app_user_params)
        format.html { redirect_to app_user_url(@app_user), notice: "App user was successfully updated." }
        format.json { render :show, status: :ok, location: @app_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_users/1 or /app_users/1.json
  def destroy
    @app_user.destroy

    respond_to do |format|
      format.html { redirect_to app_users_url, notice: "App user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_user
      @app_user = AppUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_user_params
      params.fetch(:app_user, {})
    end
end
