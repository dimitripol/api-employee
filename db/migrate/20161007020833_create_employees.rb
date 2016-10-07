class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :employeeNumber
      t.string :lastName
      t.string :firstName
      t.integer :extension
      t.string :email
      t.integer :officeCode
      t.string :reportsTo
      t.string :jobTitle
      t.string :photo

      t.timestamps
    end
  end
end
