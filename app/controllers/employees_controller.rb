class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show
        # @employee = Employee.find(params[:id])
    end 

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)

        if @employee.valid?
            redirect_to employee_path(@employee.id)
        else flash[:my_errors] = @employee.errors.full_messages
          redirect_to new_employee_path
        end
    end

    def edit
        # @employee = Employee.find(params[:id])
    end
    
    def update
        # employee = Employee.find(params[:id])
        # employee.update(employee_params)

        if @employee.update(employee_params)
            redirect_to employee_path(@employee.id)
        else 
            flash[:my_errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end
end
