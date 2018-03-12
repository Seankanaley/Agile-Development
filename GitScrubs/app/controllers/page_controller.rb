class PageController < ApplicationController

  def home
    @users = User.select("id")
    @employees = Shift.all
    render :layout => 'home'
  end

  def login
    @users = User.select("id")
    @employees = Shift.all
  end

  def contact_us
    @users = User.select("id")
    @employees = Shift.all
    @first_name = params['first_name']
    @last_name = params['last_name']
    @email_address = params['email_address']
    @phone_number = params['phone_number']
    @question = params['question']

    @submit = params['commit']

  if (@submit == "Submit")
    if (@email_address == "")
      flash.now[:error] = "#{flash.now[:error]} <br> An email address is required."
    elsif (@first_name == "")
      flash.now[:error] = "#{flash.now[:error]} <br> Your First Name is required"
    elsif (@last_name == "")
      flash.now[:error] = "#{flash.now[:error]} <br> Your First Name is required"
    elsif (@question == "")
      flash.now[:error] = "#{flash.now[:error]} <br> Your Question is required"
    end
    if @email_address != "" && @first_name != "" && @last_name != "" && @question != ""
      UserMailer.contact_mailer(@email_address, @first_name, @last_name, @question).deliver_now
    end

  end

  end

  def about_us
  end

  def employee_sched
    @users = User.select("id")
    @employees = Shift.all
  end

  def destroy
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to employee_sched_path, notice: 'Shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def manager_sched
    @shifts = Shift.all
    @user = User.all
  end

  def hosp_admin_sched
   Shift.joins(:users)
   @shifts = Shift.all
   @user = User.all
  end
end
