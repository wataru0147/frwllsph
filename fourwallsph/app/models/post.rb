class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	validates :title,   		presence: true, length: {maximum: 40}
	validates :address, 		presence: true
	validates :city_id, 		presence: true
	validates :contact_number,  presence: true,	length: {maximum: 10}
	validates :post_image,		presence: true
	validates :rental_fee, 		presence: true
	validates :contract_term, 	presence: true
	validates :deposit_pay, 	presence: true
	validates :advance_pay, 	presence: true

	has_attached_file :post_image
	has_attached_file :post_image_opt1	
	has_attached_file :post_image_opt2
	has_attached_file :post_image_opt3

 
	validates_attachment_content_type :post_image, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :post_image_opt1, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :post_image_opt1, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :post_image_opt1, :content_type => /\Aimage\/.*\Z/

def self.search(search)
		if search
		where(["title LIKE?", "%#{search}%"]) 
			else
		Post.all
		end
	end



end
