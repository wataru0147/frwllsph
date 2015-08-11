class PostsController < ApplicationController

	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	def index
			if params[:city].blank?
			@post = Post.all.order("updated_at DESC").paginate(page: params[:page], per_page:8)
				if 	params[:search].blank?				
				else
				@post = Post.search(params[:search]).order("updated_at DESC").paginate(page: params[:page], per_page:8)
				end
			else
			@city_id = City.find_by(name: params[:city]).id
			@post = Post.where(city_id: @city_id).order("updated_at DESC").paginate(page: params[:page], per_page:8)
			end
	end

	def show

	end

	def new
		@post = current_user.posts.build
	end

	def edit

	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "Post was successfully updated"
		else
			render 'edit'
		end
	end

	def create
		@post = current_user.posts.build(post_params)
		if @post.save
			redirect_to @post, notice: "Post successful"
		else
			render 'new'
		end
	end

	def destroy
		
		@post.destroy
		redirect_to root_path
	end

private

	def post_params
		params.require(:post).permit(:title, :description, :post_image, 
									 :city_id, :contact_number, :address,
									 :city_name, :rental_fee, :contract_term,
									 :deposit_pay, :advance_pay, :post_image_opt1,
									 :post_image_opt2, :post_image_opt3)
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
