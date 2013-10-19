class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patient = Patient.find_by_user_id(current_user.id)
    p "******************"
    p @patient
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient }
      else
        format.html { render action: 'new' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def feedback
    @patient = Patient.find_by_user_id(current_user.id)
  end  

  def feedback_response
    @feedback = Feedback.new
    @feedback.feedback = params[:feedback]
    @feedback.patient_id = params[:id]
    @patient=Patient.find_by_id(params[:id])
    respond_to do |format|
      if @feedback.save
          format.html { redirect_to @patient}
      else
          format.html { redirect_to feedback_patient_url(@patient.id), notice: "Feedback cann't be blank"}
      end
    end    

  end  

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :f_name, :dob, :city, :country, :state, :blood_group, :mobile_number, :phone_number, :occupation, :email, :qualification, :address )
    end

    def patient_dashboard
      @patient = current_user.patient
      all =  @patient.appointments
      all = all || @patient.complaints
      #all = all || @patient.feedbacks
    end


end
