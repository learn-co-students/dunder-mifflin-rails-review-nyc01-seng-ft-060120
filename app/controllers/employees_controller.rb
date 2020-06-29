class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  def index
    @employees = Employee.all
  end
  def new
    @employee = Employee.new
  end

  def show
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def edit
  end

  def update 
  end
  
  def destroy 
    @employee.destroy
    redirect_to employees_path
  end


  private
  def employee_params
    @params.require(:employee).permit(:first_name, :last_name, :alias, :title, :dog_id, dog_attributes: [:name, :id, :breed])
  end
  
  def set_employee
    @employee = Employee.find(params[:id])
  end
  
end
