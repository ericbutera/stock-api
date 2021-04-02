# frozen_string_literal: true

##
# Stock API
class StocksController < ApplicationController
  def index
    Resque.enqueue(EmailSender, params) # schedule job!
    @stocks = Stock.all
    render json: @stocks
  end

  def show
    @stock = Stock.find params[:id]
    render json: @stock
  end

  def create
    @stock = Stock.create! allowed
    render json: @stock, status: :created
  end

  def update
    @stock = Stock.find params[:id]
    @stock.update stock_params
    render json: "Updated <#{id}>"
  end

  def destroy
    # soft delete
  end

  private

  def stock_params
    params.permit :title, :ticker, :cik
  end
end
