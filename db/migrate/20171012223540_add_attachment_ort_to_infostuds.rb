class AddAttachmentOrtToInfostuds < ActiveRecord::Migration[5.0]
  def self.up
    change_table :infostuds do |t|
      t.attachment :ort
    end
  end

  def self.down
    remove_attachment :infostuds, :ort
  end
end
