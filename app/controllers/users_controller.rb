class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
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
    @user = User.new(user_params)
      @user.s1=params[:user][:age]
      @user.s2=params[:user][:gender]
      @user.s3=params[:user][:disease]
      @user.s4a=params[:user][:heartrate_morning]
      @user.s4b=params[:user][:heartrate_noon]
      @user.s4c=params[:user][:heartrate_night]
      @user.s5a=params[:user][:temp_morning]
      @user.s5b=params[:user][:temp_noon]
      @user.s5c=params[:user][:temp_night]
      @user.s6a=params[:user][:resp_morning]
      @user.s6b=params[:user][:resp_noon]
      @user.s6c=params[:user][:resp_night]
      @user.s7a=params[:user][:bp_morning]
      @user.s7b=params[:user][:bp_noon]
      @user.s7c=params[:user][:bp_night]
      @user.s8a=params[:user][:spo2_morning]
      @user.s8b=params[:user][:spo2_noon]
      @user.s8c=params[:user][:spo2_night]
    
    respond_to do |format|
      if @user.save
        if params[:user][:file_video]!=''
          @user.s9=Rails.root.join('public', 'files', 'video_'+@user.id.to_s)
        end
        if params[:user][:file_audio]!=''
          @user.s10=Rails.root.join('public', 'files', 'audio_'+@user.id.to_s)
        end
        upload
        QuestionMailer.record_email(@user).deliver
        format.html { redirect_to questionaire_path, notice: 'Questionaire Completed! Thank you!' }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def upload
    uploaded_io = params[:user][:file_video]
    if uploaded_io!=nil
      File.open(Rails.root.join('public', 'files', 'video_'+@user.id.to_s), 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end
    uploaded_io = params[:user][:file_audio]
    if uploaded_io!=nil
      File.open(Rails.root.join('public', 'files', 'audio_'+@user.id.to_s), 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
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
      params.require(:user).permit(:uid, :s1, :s2, :s3, :s4a, :s4b, :s4c, :s5a, :s5b, :s5c, :s6a, :s6b, :s6c, :s7a, :s7b, :s7c, :s8a, :s8b, :s8c, :s9, :s10)
    end
end
