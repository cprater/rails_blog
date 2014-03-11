class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(user_params)
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	private 

	def user_params
		params.require(:post).permit(:title, :content)
	end
end


#params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
