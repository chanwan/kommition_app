class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column  :users, :type_education, :string
  	add_column  :users, :country, :string
  	add_column  :users, :last_name, :string
  	add_column  :users, :first_name, :string
  	add_column  :users, :sur_name, :string
  	add_column  :users, :name, :string
  	add_column  :users, :sex, :string
  	add_column  :users, :date_of_birth, :string
  	add_column  :users, :born_place, :string
  	add_column  :users, :type_document, :string
  	add_column  :users, :another_name_document, :string
  	add_column  :users, :serial_number_document, :string
  	add_column  :users, :number_document, :string
  	add_column  :users, :given_date, :string
  	add_column  :users, :place_given_document, :string
  	add_column  :users, :phone_number, :string
  end
end
