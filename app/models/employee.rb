class Employee < ApplicationRecord

  validates :email, :employeeNumber, uniqueness: true, on: :create
  validates :employeeNumber, :email, :officeCode, :reportsTo, presence: true
  validates :employeeNumber, :extension,  numericality: { only_integer: true }
end