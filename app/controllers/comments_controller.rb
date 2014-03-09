class CommentsController < ApplicationController
	def index
	end

	def new
		@comment = Comment.new
	end

	def create
		post = Post.find(session[:post_id])
		comment = Comment.new(comment_params)
		post.comments << comment
		redirect_to post
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end
end