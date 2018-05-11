class PostsController < ApplicationController
	layout "three_cols"
	def index
		@users = User.all
		@posts = Post.all
	end

	def create
		@post = Post.create(post_params)
		redirect_to '/posts'
	end

	private
		def post_params
			params.require(:post).permit(:title, :content, :user_id)
		end
end
