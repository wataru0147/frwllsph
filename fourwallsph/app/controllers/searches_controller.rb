class SearchesController < ApplicationController

	def new
		@search = Search.new

	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])		
	end


	private
	def search_params
		params.require(:search).permit(:keywords, :city_id, :min_rental_fee,:max_rental_fee, 
									   :min_contract_term, :max_contract_term, :min_deposit_pay,
									   :max_deposit_pay, :min_advance_pay, :max_advance_pay)
	end		

end
