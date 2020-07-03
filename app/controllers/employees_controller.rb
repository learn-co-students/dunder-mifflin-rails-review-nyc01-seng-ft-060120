class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :delete]
    def index
        @employees = Employee.all
    end

    def show
        #set_employee
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params(:dog_id, :first_name, :last_name, :title, :office))
        redirect_to employee_path(@employee.id)
    end

    def edit
    end

    def update
        @employee.update(employee_params(:dog_id, :first_name, :last_name, :title, :office))
        redirect_to employee_path(@employee)
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end
end
