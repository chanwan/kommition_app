class CreateInfostuds < ActiveRecord::Migration[5.1]
  def change
    create_table :infostuds do |t|
   
      t.timestamps
    end
  end
end
