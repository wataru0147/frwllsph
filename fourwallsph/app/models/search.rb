class Search < ActiveRecord::Base

	def search_posts

			posts = Post.all
			posts = posts.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
			posts = posts.where(["city_id = ?", "#{city_id}"]) if city_id.present?
			posts = posts.where(["rental_fee >= ?", "#{min_rental_fee}"]) if min_rental_fee.present?
			posts = posts.where(["rental_fee <= ?", "#{max_rental_fee}"]) if max_rental_fee.present?
			posts = posts.where(["contract_term >= ?", "#{min_contract_term}"]) if min_contract_term.present?
			posts = posts.where(["contract_term  <= ?", "#{max_contract_term}"]) if max_contract_term.present?
			posts = posts.where(["deposit_pay  >= ?", "#{min_deposit_pay}"]) if min_deposit_pay.present?
			posts = posts.where(["deposit_pay  <= ?", "#{max_deposit_pay}"]) if max_deposit_pay.present?
			posts = posts.where(["advance_pay  >= ?", "#{min_advance_pay}"]) if min_advance_pay.present?
			posts = posts.where(["advance_pay  <= ?", "#{max_advance_pay}"]) if max_advance_pay.present?

			return posts
	end

	

end
