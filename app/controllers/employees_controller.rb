class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all

    render json: @employees
  end

  # GET /employees/id
  def show
    render json: @employee
  end

  # GET /employee/name
  def get_name
    @emp = Employee.where(firstName: params[:firstName])
    render json: @emp
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/id
  def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/id
  def destroy
    @employee.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def employee_params
    params.require(:employee).permit(:employeeNumber, :lastName, :firstName, :extension, :email, :officeCode, :reportsTo, :jobTitle, :photo)
  end

end
