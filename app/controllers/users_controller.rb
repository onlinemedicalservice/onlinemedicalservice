class UsersController < ApplicationController
  def index
    @user = current_user
    if @user && @user.patient && !@user.patient.patient_info_completed
     redirect_to edit_patient_url(@user.patient)
    else
      redirect_to patients_path
    end
  end

  def edit

  end

  def update

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end
