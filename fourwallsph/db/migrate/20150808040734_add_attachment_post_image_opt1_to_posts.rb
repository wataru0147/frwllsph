class AddAttachmentPostImageOpt1ToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :post_image_opt1
    end
  end

  def self.down
    remove_attachment :posts, :post_image_opt1
  end
end
