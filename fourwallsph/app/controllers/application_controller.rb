class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def searching
			if params[:city].blank?
			@post = Post.all.order("updated_at DESC").paginate(page: params[:page], per_page:4)
				if 	params[:search].blank?				
				else
				@post = Post.search(params[:search]).order("updated_at DESC").paginate(page: params[:page], per_page:4)
				end
			else
			@city_id = City.find_by(name: params[:city]).id
			@post = Post.where(city_id: @city_id).order("updated_at DESC").paginate(page: params[:page], per_page:4)
			end
	end
end
