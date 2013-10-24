class UsersController < ApplicationController
  def index
    @user = current_user
    if @user && @user.patient 
     (!@user.patient.patient_info_completed) ? (redirect_to edit_patient_url(@user.patient)) : (redirect_to patient_url(@user.patient))
    else @user && @user.doctor
     (!@user.doctor.patient_info_completed) ? (redirect_to edit_doctor_url(@user.doctor)) : (redirect_to doctor_url(@user.doctor))
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
