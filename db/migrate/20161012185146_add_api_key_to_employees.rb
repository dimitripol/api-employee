class AddApiKeyToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :api_key, :string
  end
end
