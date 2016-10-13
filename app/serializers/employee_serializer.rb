class EmployeeSerializer < ActiveModel::Serializer
  # filter reportsTo, api_key
  attributes :id, :employeeNumber, :lastName, :firstName, :extension, :email, :officeCode, :jobTitle, :photo
end