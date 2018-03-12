class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!  ##Checks user before viewing shifts page

  # GET /shifts
  # GET /shifts.json
  def index
    @shifts = Shift.all
    @users = User.select("id")
    @employees = Shift.all
  end

  def deny_popup
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /shifts/1
  # GET /shifts/1.json
  def show
    @users = User.select("id")
    @employees = Shift.all
  end

  # GET /shifts/new
  def new
    @shift = Shift.new
    @users = User.select("id")
    @employees = Shift.all
  end

  # GET /shifts/1/edit
  def edit
    @users = User.all
    @id_field = User.pluck(:id)
    @employees = Shift.all
  end

  # POST /shifts
  # POST /shifts.json
  def create
    @shift = Shift.new(shift_params)
    @users = User.select("id")
    @employees = Shift.all

    respond_to do |format|
      if @shift.save
        format.html { redirect_to @shift, notice: 'Shift was successfully created.' }
        format.json { render :show, status: :created, location: @shift }
      else
        format.html { render :new }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shifts/1
  # PATCH/PUT /shifts/1.json
  def update
    @users = User.select("id")
    @employees = Shift.all
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to @shift, notice: 'Shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift }
      else
        format.html { render :edit }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shifts/1
  # DELETE /shifts/1.json
  def destroy
    @users = User.select("id")
    @employees = Shift.all
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to employee_sched_url, notice: 'Shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @users = User.select("id")
      @employees = Shift.all
      @shift = Shift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_params
      @users = User.select("id")
      @employees = Shift.all
      params.require(:shift).permit(:start_time, :end_time, :location, :employeeID, :confirmed)
    end
end
