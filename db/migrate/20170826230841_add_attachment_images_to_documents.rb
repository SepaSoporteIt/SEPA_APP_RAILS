class AddAttachmentImagesToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :documents, :images
  end
end
