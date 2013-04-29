class PortfoliosController < ApplicationController

	def index
		@portfolio = Portfolio.all.reverse
	end

	def new
		@portfolio = Portfolio.new
	end

	def create
		password = params[:portfolio].delete('password')
	  	if User.first.authenticate(password)
	  		@portfolio = Portfolio.create(params[:portfolio])
	     	redirect_to root_path
	  	else
	  		redirect_to root_path, error: "Nope."
	  	end
	end

end