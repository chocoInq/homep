class HomeController < ApplicationController

	def index
		@peopleN = "number of people watching this website"
		@books = Bmodel.all
	end

	def write
		book = Bmodel.new
		book.name = params[:na]
		book.content = params[:comment]
		book.save

		redirect_to '/'
	end

	def delete
		Bmodel.find(params[:ii]).destroy
		redirect_to '/'
	end

end
