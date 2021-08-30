class CheesesController < ApplicationController
	def index
		cheeses = Cheese.all 
		render json: cheeses
	end

	def order_cheeses
		# ordered_cheeses = 
		render json: Cheese.all.order(:name)
	end

	def limited
		render json: Cheese.all.limit(2)
	end
end
