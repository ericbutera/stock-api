class StocksController < ApplicationController
    def index
        @stocks = Stock.all
        render json: @stocks
    end

    def create 
        allowed = params.permit :title, :ticker
        @stock = Stock.create allowed
        render json: @stock, status: :created
    end

    def update
        @stock = Stock.find(params[:id])
        @stock.update(
            ticker: params[:ticker],
            name: params[:name]
        )
        render json: "Updated <#{id}>"
    end

    def destroy
        # soft delete
    end

end