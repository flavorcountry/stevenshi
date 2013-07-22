class StaticController < ApplicationController

	def about
	end

	def archive
		@posts_by_month = Post.find(:all).reverse.group_by { |post| post.created_at.strftime("%b, %Y") }
	end

end