class AddFieldToInfostud < ActiveRecord::Migration[5.1]
  def change
  	add_column :infostuds, :type_education, :string
  	add_column :infostuds, :sex, :string
  	add_column :infostuds, :date_of_birth, :string
  	add_column :infostuds, :born_place, :string
  	add_column :infostuds, :type_document, :string
  	add_column :infostuds, :another_name_document, :string
  	add_column :infostuds, :serial_number_document, :string
  	add_column :infostuds, :given_date, :string
  	add_column :infostuds, :place_given_document, :string
  	add_column :infostuds, :phone_number, :string
  end
end
