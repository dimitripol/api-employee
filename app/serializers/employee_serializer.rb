class EmployeeSerializer < ActiveModel::Serializer
  # filter :id, :reportsTo, :api_key
  attributes :employeeNumber, :lastName, :firstName, :extension, :email, :officeCode, :jobTitle, :photo
end