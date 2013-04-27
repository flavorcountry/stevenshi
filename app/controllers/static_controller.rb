class StaticController < ApplicationController

	def about
	end

	def portfolio
		@portfolio = Portfolio.all
	end

end