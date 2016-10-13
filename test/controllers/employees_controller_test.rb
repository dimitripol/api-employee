require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = Employee.first
    @token = SecureRandom.urlsafe_base64

    @employee.api_key = @token
    @employee.email = @token+"@test.com"
    @employee.employeeNumber = Employee.maximum(:employeeNumber).next

    # puts @employee.employeeNumber.to_s
    # exit;
  end

  test "should get index" do
    get employees_url, as: :json
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { email: (@token+@employee.email), employeeNumber: @employee.employeeNumber, extension: @employee.extension, firstName: @employee.firstName, jobTitle: @employee.jobTitle, lastName: @employee.lastName, officeCode: @employee.officeCode, photo: @employee.photo, reportsTo: @employee.reportsTo, api_key: @employee.api_key } }, as: :json
    end

    assert_response 201
  end

  test "should show employee" do
    get employee_url(@employee), as: :json
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { email: (@token+@employee.email), employeeNumber: @employee.employeeNumber, extension: @employee.extension, firstName: @employee.firstName, jobTitle: @employee.jobTitle, lastName: @employee.lastName, officeCode: @employee.officeCode, photo: @employee.photo, reportsTo: @employee.reportsTo, api_key: @employee.api_key } }, as: :json
    assert_response 200
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee), as: :json
    end

    assert_response 204
  end
end