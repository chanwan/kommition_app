class AddAttachmentPassportToInfostuds < ActiveRecord::Migration[5.0]
  def self.up
    change_table :infostuds do |t|
      t.attachment :passport
    end
  end

  def self.down
    remove_attachment :infostuds, :passport
  end
end
