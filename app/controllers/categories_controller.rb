class CategoriesController < ApplicationController

	def show
		@category = Category.find(params[:id])
		@posts = @category.posts.order("created_at desc").page(params[:page]).per_page(5)
	end

end